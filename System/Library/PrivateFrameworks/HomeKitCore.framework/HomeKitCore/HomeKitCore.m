uint64_t sub_2530B9530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = *(a3 + 16);
  v12 = sub_253148E44();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = *(v13 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v15 = *(a3 + 24);
  v16 = sub_2531491F4();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + *(a3 + 40);

  return v17(v18, a2, v16);
}

uint64_t sub_2530B9678(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_253148944();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = *(a4 + 16);
  v14 = sub_253148E44();
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a3)
  {
    v10 = v14;
    v11 = *(v15 + 56);
    v12 = a1 + *(a4 + 36);
    goto LABEL_5;
  }

  v17 = *(a4 + 24);
  v18 = sub_2531491F4();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + *(a4 + 40);

  return v19(v20, a2, a2, v18);
}

uint64_t sub_2530B97CC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2530B9804()
{
  v1 = sub_253148944();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2530B98C8()
{
  v1 = sub_253148944();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 48);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2530B99F8()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_2530B9A38()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2530B9A98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580760, &qword_25314C4B8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_2530B9BB4()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];

  return swift_deallocObject();
}

uint64_t sub_2530B9BFC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_2530B9C6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D0, &qword_25314C5A0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_2530B9D14()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2530B9D84()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_2530B9DC4()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_2530B9DFC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

void sub_2530B9E40(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_253148904();
  [v2 setModelID_];
}

id sub_2530B9E9C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isExplicitContentAllowed];
  *a2 = result;
  return result;
}

id sub_2530B9EE4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isiTunesAccountAllowed];
  *a2 = result;
  return result;
}

id sub_2530B9F2C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isDolbyAtmosEnabled];
  *a2 = result;
  return result;
}

id sub_2530B9F74@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isLosslessMusicEnabled];
  *a2 = result;
  return result;
}

id sub_2530B9FBC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPlaybackInfluencesEnabled];
  *a2 = result;
  return result;
}

id sub_2530BA004@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isSiriIdentifyVoiceEnabled];
  *a2 = result;
  return result;
}

id sub_2530BA04C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 user];
  *a2 = result;
  return result;
}

void sub_2530BA0A0(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_253148904();
  [v2 setModelID_];
}

void sub_2530BA100(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_253148B54();
  [v4 setName_];
}

id sub_2530BA164@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 home];
  *a2 = result;
  return result;
}

uint64_t sub_2530BA1BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_253148944();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2530BA228(uint64_t a1, uint64_t a2)
{
  v4 = sub_253148944();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2530BA298(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + a3;
  v4 = *(a2 + a3 - 32);
  v5 = *(v3 - 8);
  v6 = *a1;
  return Array<A>.subscript.getter();
}

unint64_t sub_2530BA2B4()
{
  v0 = *(sub_253148944() - 8);
  result = ((*(v0 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  v2 = *(v0 + 80) & 0xF8 | 7;
  return result;
}

__n128 sub_2530BA32C(uint64_t a1, uint64_t a2)
{
  v4 = sub_253148944();
  v5 = *(v4 - 8) + 16;
  (*v5)(a2, a1, v4);
  v6 = (*(v5 + 48) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = a1 + v6;
  v8 = a2 + v6;
  v10 = *(v7 + 16);
  result = *(v7 + 32);
  *v8 = *v7;
  *(v8 + 16) = v10;
  *(v8 + 32) = result;
  return result;
}

__n128 sub_2530BA3D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_253148944();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  (*(v5 + 32))(a2, a1 + ((*(v5 + 80) + 48) & ~*(v5 + 80)), v4);
  v7 = a2 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *(a1 + 16);
  result = *(a1 + 32);
  *v7 = *a1;
  *(v7 + 16) = v9;
  *(v7 + 32) = result;
  return result;
}

uint64_t sub_2530BA46C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + a3;
  v4 = *(a2 + a3 - 24);
  v5 = *(v3 - 8);
  v6 = *a1;
  return Array<A>.subscript.getter();
}

unint64_t sub_2530BA488()
{
  v0 = *(sub_253148944() - 8);
  result = ((*(v0 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  v2 = *(v0 + 80) & 0xF8 | 7;
  return result;
}

__n128 sub_2530BA4FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_253148944();
  v5 = *(v4 - 8) + 16;
  (*v5)(a2, a1, v4);
  v6 = (*(v5 + 48) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = *(v7 + 32);
  result = *(v7 + 16);
  *v8 = *v7;
  *(v8 + 16) = result;
  *(v8 + 32) = v9;
  return result;
}

__n128 sub_2530BA588(uint64_t a1, uint64_t a2)
{
  v4 = sub_253148944();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  (*(v5 + 32))(a2, a1 + ((*(v5 + 80) + 40) & ~*(v5 + 80)), v4);
  v7 = a2 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *(a1 + 32);
  result = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 16) = result;
  *(v7 + 32) = v8;
  return result;
}

uint64_t sub_2530BA628()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2530BA660()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DB8, &unk_25314D418);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_2530BA744()
{
  v1 = *(v0 + 3);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 6);

  v6 = *(v0 + 7);

  v7 = *(v0 + 8);

  v8 = *(v0 + 9);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_2530BA848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  type metadata accessor for RelationshipObserver.Change();
  v7 = sub_253148E84();
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_2530BA8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  type metadata accessor for RelationshipObserver.Change();
  v8 = sub_253148E84();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

uint64_t sub_2530BA974(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2530BA980()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = v0[2];
  swift_unknownObjectRelease();
  v6 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2530BAA60()
{
  v1 = (type metadata accessor for HomesStore.AnyChanges(0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C8, &qword_25314D940);
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[7]);

  v8 = *(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_2530BAB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
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

uint64_t sub_2530BAC30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253148944();
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

uint64_t sub_2530BAD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2530BADD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253148944();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_2530BAE98(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_253148904();
  [v2 setModelID_];
}

void sub_2530BAEF8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_253148B54();
  [v4 setHandle_];
}

id sub_2530BAF5C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 home];
  *a2 = result;
  return result;
}

id sub_2530BAFAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userSharedSettings];
  *a2 = result;
  return result;
}

uint64_t sub_2530BAFFC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_2530BB03C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_2530BB074()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_2530BB0BC()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 5);
  swift_getAssociatedTypeWitness();
  v3 = sub_253148974();
  v4 = *(sub_2531491F4() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(v0 + 6);

  v8 = *(v3 - 8);
  if (!(*(v8 + 48))(&v0[v5], 1, v3))
  {
    (*(v8 + 8))(&v0[v5], v3);
  }

  return swift_deallocObject();
}

uint64_t sub_2530BB1FC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_2530BB234()
{
  v12 = *(v0 + 24);
  v1 = sub_253148974();
  v2 = *(sub_2531491F4() - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  if (!(*(v5 + 48))(v0 + v4, 1, v1))
  {
    (*(v5 + 8))(v0 + v4, v1);
  }

  v6 = (v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v6);

  v9 = *(v0 + v7 + 8);

  v10 = *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_2530BB38C()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_2530BB3C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581610, &qword_25314E3F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2530BB460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
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

uint64_t sub_2530BB520(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253148944();
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

uint64_t sub_2530BB5EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2530BB624()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_2530BB674()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581888, &qword_25314E9A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2530BB708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 8)
    {
      return v10 - 7;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2530BB7C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253148944();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 7;
  }

  return result;
}

void sub_2530BB884(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_253148904();
  [v2 setModelID_];
}

uint64_t sub_2530BB8E8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2530BB928(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_253148944();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2530BB9D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_253148944();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2530BBB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
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

uint64_t sub_2530BBBC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253148944();
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

uint64_t sub_2530BBD50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2530BBD90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_253148884();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for HomesStore.CoreData.Configuration.StoreType(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2530BBEB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_253148884();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for HomesStore.CoreData.Configuration.StoreType(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2530BBFD8()
{
  MEMORY[0x259BFDD40](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2530BC010()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_2530BC058(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_253148904();
  [v2 setModelID_];
}

void sub_2530BC0B8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_253148B54();
  [v4 setName_];
}

id sub_2530BC11C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 homesTopology];
  *a2 = result;
  return result;
}

uint64_t sub_2530BC45C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 48);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_2530BC51C(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_253148904();
  [v2 setModelID_];
}

void sub_2530BC57C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_253148B54();
  [v4 setName_];
}

id sub_2530BC5E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 category];
  *a2 = result;
  return result;
}

id sub_2530BC6A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 home];
  *a2 = result;
  return result;
}

id sub_2530BC6F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 room];
  *a2 = result;
  return result;
}

id sub_2530BC748@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 appleMediaDevice];
  *a2 = result;
  return result;
}

uint64_t sub_2530BC798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
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

uint64_t sub_2530BC858(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253148944();
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

void sub_2530BC938(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_253148904();
  [v2 setModelID_];
}

id sub_2530BC994@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isCurrentDevice];
  *a2 = result;
  return result;
}

id sub_2530BC9E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 accessory];
  *a2 = result;
  return result;
}

uint64_t sub_2530BCA34()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2530BCA6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2530BCB54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = v0[2];
  swift_unknownObjectRelease();
  v6 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2530BCC34()
{
  v1 = (type metadata accessor for HomesStore.AnyChanges(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C8, &qword_25314D940);
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[7]);

  v8 = *(v0 + v3);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2530BCD44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2530BCD7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2530BCE4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2530BCEF8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_2530BCF30()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_2530BCF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
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

uint64_t sub_2530BD02C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253148944();
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

uint64_t sub_2530BD298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
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

uint64_t sub_2530BD354(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253148944();
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

uint64_t sub_2530BD40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582420, &qword_2531514F8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2530BD514(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582420, &qword_2531514F8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_2530BD6BC(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_253148904();
  [v2 setModelID_];
}

void sub_2530BD71C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_253148B54();
  [v4 setName_];
}

id sub_2530BD780@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isDefault];
  *a2 = result;
  return result;
}

id sub_2530BD7C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 home];
  *a2 = result;
  return result;
}

uint64_t sub_2530BD958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
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

uint64_t sub_2530BDA24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253148944();
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

uint64_t sub_2530BDB14(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2530BDB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_253148944();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for AsyncStreamContainer.Context();
  v10 = *(v9 + 36);
  v11 = sub_253148E44();
  (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  v12 = *(v9 + 40);
  v13 = sub_2531491F4();
  v14 = *(*(v13 - 8) + 32);

  return v14(a4 + v12, a3, v13);
}

uint64_t sub_2530BDCAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253148944();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2530BDD14()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2530BDD6C(uint64_t a1)
{
  result = sub_253148944();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = sub_253148E44();
    if (v5 <= 0x3F)
    {
      v6 = *(a1 + 24);
      result = sub_2531491F4();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2530BDE54()
{
  result = qword_27F580560;
  if (!qword_27F580560)
  {
    sub_253148944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580560);
  }

  return result;
}

uint64_t sub_2530BDED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = *v2;
  v64 = a1;
  v65 = v2 + 14;
  v56 = *(v3 + 88);
  v4 = sub_2531491F4();
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  MEMORY[0x28223BE20](v4);
  v60 = &v48 - v6;
  v7 = *(v3 + 80);
  v61 = type metadata accessor for AsyncStreamContainer.Context();
  v59 = *(v61 - 8);
  v8 = *(v59 + 64);
  v9 = MEMORY[0x28223BE20](v61);
  v58 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v57 = &v48 - v11;
  v67 = sub_253148944();
  v12 = *(v67 - 8);
  v51 = *(v12 + 64);
  v13 = MEMORY[0x28223BE20](v67);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  v18 = sub_253148E24();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - v21;
  v23 = sub_253148E44();
  v24 = *(v23 - 8);
  v53 = v23;
  v54 = v24;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v52 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v66 = &v48 - v28;
  (*(v19 + 104))(v22, *MEMORY[0x277D85778], v18);
  v29 = v7;
  v50 = v7;
  sub_253148DF4();
  (*(v19 + 8))(v22, v18);
  v49 = v17;
  sub_253148934();
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = *(v12 + 16);
  v32 = v67;
  v31(v15, v17, v67);
  v33 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v34 = swift_allocObject();
  v35 = v56;
  *(v34 + 2) = v29;
  *(v34 + 3) = v35;
  *(v34 + 4) = v30;
  (*(v12 + 32))(&v34[v33], v15, v32);
  v36 = v53;
  v37 = v66;
  sub_253148E14();
  v38 = v15;
  v39 = v49;
  v31(v15, v49, v32);
  v40 = v54;
  v41 = v52;
  v42 = v36;
  (*(v54 + 16))(v52, v37, v36);
  v43 = v60;
  (*(v62 + 16))(v60, v64, v63);
  v44 = v57;
  sub_2530BDB7C(v38, v41, v43, v57);
  v45 = v59;
  v46 = v61;
  (*(v59 + 16))(v58, v44, v61);
  swift_beginAccess();
  sub_253148D64();
  sub_253148D34();
  swift_endAccess();
  (*(v45 + 8))(v44, v46);
  (*(v12 + 8))(v39, v67);
  return (*(v40 + 8))(v66, v42);
}

uint64_t sub_2530BE4A4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85778];
  v3 = sub_253148E24();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2530BE51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_253148944();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = sub_253148DE4();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    (*(v9 + 16))(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
    v18 = (*(v9 + 80) + 56) & ~*(v9 + 80);
    v19 = swift_allocObject();
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    *(v19 + 4) = a4;
    *(v19 + 5) = a5;
    *(v19 + 6) = v16;
    (*(v9 + 32))(&v19[v18], &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    sub_253112858(0, 0, v14, &unk_25314BDC0, v19);
  }

  return result;
}

uint64_t sub_2530BE730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2530BE750, a4, 0);
}

uint64_t sub_2530BE750()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_2530BE7B0();
  v3 = v0[1];

  return v3();
}

uint64_t sub_2530BE7B0()
{
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  swift_beginAccess();
  type metadata accessor for AsyncStreamContainer.Context();
  sub_253148D64();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_253149064();
  return swift_endAccess();
}

uint64_t sub_2530BE8BC(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v54 = a3;
  v53 = a2;
  v5 = *v3;
  v6 = *(*v3 + 80);
  v70 = sub_253148E04();
  v67 = *(v70 - 8);
  v7 = *(v67 + 64);
  v8 = MEMORY[0x28223BE20](v70);
  v69 = &v47 - v9;
  v10 = *(v6 - 8);
  v48 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v71 = &v47 - v11;
  v12 = *(v5 + 88);
  v62 = sub_2531491F4();
  v66 = *(v62 - 8);
  v13 = *(v66 + 64);
  v14 = MEMORY[0x28223BE20](v62);
  v63 = &v47 - v15;
  v16 = *(v12 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v55 = &v47 - v18;
  v65 = v12;
  v19 = type metadata accessor for AsyncStreamContainer.Context();
  v64 = *(v19 - 8);
  v20 = *(v64 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v47 - v24;
  swift_beginAccess();
  v26 = v3[14];

  if (!sub_253148D44())
  {
  }

  v60 = (v64 + 32);
  v61 = (v64 + 16);
  v58 = (v16 + 48);
  v59 = (v66 + 16);
  v52 = (v16 + 32);
  v49 = (v16 + 8);
  v27 = 0;
  v56 = (v64 + 8);
  v68 = (v10 + 16);
  v28 = (v67 + 8);
  v51 = (v66 + 8);
  v66 = v19;
  v50 = v25;
  v57 = v26;
  while (1)
  {
    v30 = sub_253148CF4();
    sub_253148CC4();
    if (v30)
    {
      result = (*(v64 + 16))(v25, v26 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v27, v19);
      v32 = v65;
      v33 = v27;
      v34 = v63;
    }

    else
    {
      v67 = v27;
      v46 = v19;
      result = sub_2531493F4();
      v32 = v65;
      v34 = v63;
      if (v47 != 8)
      {
        goto LABEL_29;
      }

      v72 = result;
      (*v61)(v25, &v72, v46);
      result = swift_unknownObjectRelease();
      v33 = v67;
    }

    v67 = v33 + 1;
    v35 = v62;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    v36 = v23;
    v37 = v23;
    v38 = v66;
    (*v60)(v36, v25, v66);
    (*v59)(v34, &v37[*(v38 + 40)], v35);
    if ((*v58)(v34, 1, v32) == 1)
    {
      (*v56)(v37, v38);
      (*v51)(v34, v35);
      v19 = v38;
      v23 = v37;
    }

    else
    {
      v39 = v37;
      v40 = v55;
      (*v52)();
      if (v53(v40))
      {
        if (sub_253148D44())
        {
          v41 = 0;
          v42 = *(v66 + 36);
          do
          {
            v43 = sub_253148CF4();
            sub_253148CC4();
            if (v43)
            {
              result = (*(v10 + 16))(v71, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v41, v6);
              v44 = v41 + 1;
              if (__OFADD__(v41, 1))
              {
                goto LABEL_26;
              }
            }

            else
            {
              result = sub_2531493F4();
              if (v48 != 8)
              {
                goto LABEL_28;
              }

              v72 = result;
              (*v68)(v71, &v72, v6);
              result = swift_unknownObjectRelease();
              v44 = v41 + 1;
              if (__OFADD__(v41, 1))
              {
LABEL_26:
                __break(1u);
                goto LABEL_27;
              }
            }

            sub_253148E44();
            v45 = v69;
            sub_253148E34();
            (*v28)(v45, v70);
            ++v41;
          }

          while (v44 != sub_253148D44());
        }

        (*v49)(v55, v65);
      }

      else
      {
        (*v49)(v40, v32);
      }

      v23 = v39;
      v19 = v66;
      (*v56)(v39, v66);
      v25 = v50;
    }

    v26 = v57;
    v29 = sub_253148D44();
    v27 = v67;
    if (v67 == v29)
    {
    }
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2530BF050(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_253148944() - 8);
  v6 = v1[4];
  v7 = v1 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_2530BE51C(a1, v6, v7, v3, v4);
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

uint64_t sub_2530BF120(uint64_t a1)
{
  v4 = *(sub_253148944() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2530BF218;

  return sub_2530BE730(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2530BF218()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2530BF34C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2530BF36C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_2530BF3D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2530BF3F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

void sub_2530BF430(uint64_t a1, unint64_t *a2)
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

uint64_t sub_2530BF47C(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v41 = a2;
  v53 = sub_2531491F4();
  v6 = *(v53 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v53);
  v9 = &v38 - v8;
  v40 = sub_253149874();
  v10 = *(v40 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v40);
  v47 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v52 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v48 = &v38 - v22;
  v38 = v23;
  MEMORY[0x28223BE20](v21);
  v50 = &v38 - v24;
  swift_bridgeObjectRetain_n();
  v65 = sub_253148AA4();
  sub_253148D64();
  v45 = 0;
  v58 = (v14 + 16);
  v55 = (v14 + 32);
  v51 = (v6 + 8);
  v43 = v14;
  v56 = (v14 + 8);
  v39 = (v10 + 8);
  while (1)
  {
    *&v63 = a1;
    swift_getWitnessTable();
    v27 = sub_253149044();

    if (v27)
    {
    }

    if (sub_253148D44())
    {
      break;
    }

LABEL_2:

    a1 = v65;
    swift_bridgeObjectRetain_n();
    result = sub_253148D54();
    v26 = __OFADD__(v45++, 1);
    if (v26)
    {
      goto LABEL_24;
    }
  }

  v28 = 0;
  v44 = a1;
  while (1)
  {
    v30 = sub_253148CF4();
    sub_253148CC4();
    if (v30)
    {
      v31 = a1 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v28;
      v57 = *(v43 + 16);
      result = v57(v50, v31, a4);
    }

    else
    {
      result = sub_2531493F4();
      if (v38 != 8)
      {
        goto LABEL_25;
      }

      *&v63 = result;
      v57 = *v58;
      v57(v50, &v63, a4);
      result = swift_unknownObjectRelease();
    }

    v26 = __OFADD__(v28, 1);
    v32 = v28 + 1;
    v33 = v48;
    if (v26)
    {
      break;
    }

    v46 = v32;
    v54 = *v55;
    v54(v48, v50, a4);
    v34 = v49;
    v41(v33, v45);
    if (v34)
    {

      (*v56)(v33, a4);
    }

    v49 = 0;
    *(&v64[0] + 1) = a4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v63);
    v57(boxed_opaque_existential_0, v33, a4);
    sub_253149854();
    sub_253149864();
    sub_253149524();

    while (1)
    {
      sub_2531495F4();
      v64[0] = v61[1];
      v64[1] = v62;
      v63 = v61[0];
      if (!*(&v62 + 1))
      {
        break;
      }

      sub_2530C02F4(v64, v61);
      sub_2530C0304(v61, v60);
      v36 = swift_dynamicCast();
      v37 = *(v14 + 56);
      if (v36)
      {
        v37(v9, 0, 1, a4);
        v54(v20, v9, a4);
        v57(v52, v20, a4);
        sub_253148D34();
        (*v56)(v20, a4);
      }

      else
      {
        v37(v9, 1, 1, a4);
        (*v51)(v9, v53);
        sub_2530C0304(v61, v60);
        if (swift_dynamicCast())
        {
          v60[0] = v59;
          swift_getWitnessTable();
          sub_253148D24();
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v61);
    }

    (*v39)(v47, v40);
    (*v56)(v48, a4);
    a1 = v44;
    v29 = sub_253148D44();
    v28 = v46;
    if (v46 == v29)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_2530BFC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = sub_2531491F4();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v31);
  v11 = &v26 - v10;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v30 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  v29 = sub_253149874();
  v28 = *(v29 - 8);
  v18 = *(v28 + 64);
  MEMORY[0x28223BE20](v29);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_253148AA4();
  *(&v39 + 1) = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&i);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  sub_253149854();
  v27 = v20;
  sub_253149864();
  v22 = sub_253149524();

  v32 = v22;
  sub_2531495F4();
  v39 = v36;
  v40 = v37;
  for (i = v35; *(&v37 + 1); i = v35)
  {

    sub_2530C02F4(&v39, &v35);
    sub_2530C0304(&v35, v34);
    v23 = swift_dynamicCast();
    v24 = *(v12 + 56);
    if (v23)
    {
      v24(v11, 0, 1, a4);
      (*(v12 + 32))(v17, v11, a4);
      (*(v12 + 16))(v30, v17, a4);
      sub_253148D64();
      sub_253148D34();
      (*(v12 + 8))(v17, a4);
    }

    else
    {
      v24(v11, 1, 1, a4);
      (*(v7 + 8))(v11, v31);
      sub_2530C0304(&v35, v34);
      sub_253148D64();
      if (swift_dynamicCast())
      {
        v34[0] = v33;
        swift_getWitnessTable();
        sub_253148D24();
      }
    }

    __swift_destroy_boxed_opaque_existential_0(&v35);
    sub_2531495F4();
    v39 = v36;
    v40 = v37;
  }

  (*(v28 + 8))(v27, v29);

  return v41;
}

uint64_t sub_2530C0090(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_2530BFC14(a1, a2, a5, a6);
  sub_2530BF47C(v9, a3, a4, a6);
}

uint64_t sub_2530C0100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = sub_253148AA4();
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v17[5] = &v18;
  v17[6] = a3;
  v17[7] = a4;
  sub_2530C0090(a1, a2, sub_2530C026C, v17, a5, a6);
  v15 = v18;
  if (v7)
  {
  }

  return v15;
}

uint64_t sub_2530C01C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(*(a8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](a1);
  result = v11(v10);
  if (!v8)
  {
    sub_253148D64();
    return sub_253148D34();
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

_OWORD *sub_2530C02F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2530C0304(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_2530C03E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AnyModelStateChange.Tombstone(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for AnyModelStateChange(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for XPCModelStateChange();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v31[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2530C24CC(a1, v11, type metadata accessor for AnyModelStateChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_2530C2534(a1, type metadata accessor for AnyModelStateChange);
      sub_2530C2594(v11, v7, type metadata accessor for AnyModelStateChange.Tombstone);
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580588, &unk_25314BE80) + 48);
      v28 = sub_253148944();
      (*(*(v28 - 8) + 16))(v16, v7, v28);
      v29 = v7[*(v4 + 20)];
      sub_2530C2534(v7, type metadata accessor for AnyModelStateChange.Tombstone);
      v16[v27] = v29;
      swift_storeEnumTagMultiPayload();
      goto LABEL_8;
    }

LABEL_5:
    v19 = *(v11 + 1);
    v35[0] = *v11;
    v35[1] = v19;
    v36 = *(v11 + 4);
    sub_2530C25FC(v35, v32);
    v20 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v21 = *(v20 + 16);
    v22 = sub_253110940();
    v24 = v23;
    v25 = v33;
    v26 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    sub_2530D2104(v25, v26);
    sub_2530C2534(a1, type metadata accessor for AnyModelStateChange);
    sub_2530C26A4(v35);
    *v16 = v31[15];
    *(v16 + 1) = v22;
    *(v16 + 2) = v24;
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_0(v32);
LABEL_8:
    sub_2530C2594(v16, a2, type metadata accessor for XPCModelStateChange);
    v18 = 0;
    return (*(v13 + 56))(a2, v18, 1, v12);
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  sub_2530C2534(a1, type metadata accessor for AnyModelStateChange);
  sub_2530C2534(v11, type metadata accessor for AnyModelStateChange);
  v18 = 1;
  return (*(v13 + 56))(a2, v18, 1, v12);
}

uint64_t sub_2530C087C(uint64_t a1)
{
  v2 = sub_2530C2A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2530C08B8(uint64_t a1)
{
  v2 = sub_2530C2A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2530C08F4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580610, &qword_25314BF20);
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v2);
  v50 = &v46 - v4;
  v5 = sub_253148944();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v55 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580618, &qword_25314BF28);
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580620, &qword_25314BF30);
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - v14;
  v16 = type metadata accessor for XPCModelStateChange();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580628, &qword_25314BF38);
  v21 = *(v20 - 8);
  v58 = v20;
  v59 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v46 - v23;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2530C2888();
  sub_253149894();
  sub_2530C24CC(v56, v19, type metadata accessor for XPCModelStateChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = *v19;
      v28 = *(v19 + 1);
      v29 = *(v19 + 2);
      LOBYTE(v60) = 1;
      sub_2530C2984();
      v30 = v58;
      sub_253149694();
      LOBYTE(v60) = v27;
      v62 = 0;
      sub_2530C2AC4();
      v31 = v49;
      v32 = v57;
      sub_2531496D4();
      if (v32)
      {
        sub_2530C2478(v28, v29);
        (*(v48 + 8))(v11, v31);
        return (*(v59 + 8))(v24, v30);
      }

      v60 = v28;
      v61 = v29;
      v62 = 1;
      sub_2530C2B18();
      sub_2531496D4();
      (*(v48 + 8))(v11, v31);
      (*(v59 + 8))(v24, v30);
      return sub_2530C2478(v28, v29);
    }

    else
    {
      LODWORD(v56) = v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580588, &unk_25314BE80) + 48)];
      v40 = v51;
      v39 = v52;
      v41 = v55;
      (*(v51 + 32))(v55, v19, v52);
      LOBYTE(v60) = 2;
      sub_2530C28DC();
      v42 = v50;
      v43 = v58;
      sub_253149694();
      LOBYTE(v60) = 0;
      sub_2530C2A80(&qword_27F580630);
      v44 = v54;
      v45 = v57;
      sub_2531496D4();
      if (v45)
      {
        (*(v53 + 8))(v42, v44);
        (*(v40 + 8))(v41, v39);
      }

      else
      {
        LOBYTE(v60) = v56;
        v62 = 1;
        sub_2530C2AC4();
        sub_2531496D4();
        (*(v53 + 8))(v42, v44);
        (*(v40 + 8))(v55, v39);
      }

      return (*(v59 + 8))(v24, v43);
    }
  }

  else
  {
    v33 = *v19;
    v35 = *(v19 + 1);
    v34 = *(v19 + 2);
    LOBYTE(v60) = 0;
    sub_2530C2A2C();
    v30 = v58;
    sub_253149694();
    LOBYTE(v60) = v33;
    v62 = 0;
    sub_2530C2AC4();
    v36 = v47;
    v37 = v57;
    sub_2531496D4();
    if (v37)
    {
      sub_2530C2478(v35, v34);
      (*(v46 + 8))(v15, v36);
      return (*(v59 + 8))(v24, v30);
    }

    v60 = v35;
    v61 = v34;
    v62 = 1;
    sub_2530C2B18();
    sub_2531496D4();
    (*(v46 + 8))(v15, v36);
    (*(v59 + 8))(v24, v30);
    return sub_2530C2478(v35, v34);
  }
}

uint64_t sub_2530C1044@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5805B0, &qword_25314BEF8);
  v4 = *(v3 - 8);
  v81 = v3;
  v82 = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v86 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5805B8, &qword_25314BF00);
  v79 = *(v7 - 8);
  v80 = v7;
  v8 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v85 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5805C0, &qword_25314BF08);
  v77 = *(v10 - 8);
  v78 = v10;
  v11 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v83 = &v71 - v12;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5805C8, &qword_25314BF10);
  v88 = *(v84 - 8);
  v13 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v15 = &v71 - v14;
  v16 = type metadata accessor for XPCModelStateChange();
  v17 = *(*(v16 - 8) + 64);
  v18 = (MEMORY[0x28223BE20])();
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v71 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v71 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v71 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_2530C2888();
  v31 = v89;
  sub_253149884();
  if (!v31)
  {
    v72 = v26;
    v73 = v23;
    v74 = v28;
    v75 = v20;
    v76 = 0;
    v32 = v83;
    v33 = v84;
    v34 = v85;
    v35 = v86;
    v89 = v16;
    v36 = v87;
    v37 = sub_253149674();
    v38 = *(v37 + 16);
    if (!v38 || ((v39 = *(v37 + 32), v38 == 1) ? (v40 = v39 == 3) : (v40 = 1), v40))
    {
      v41 = v15;
      v42 = sub_253149434();
      swift_allocError();
      v44 = v43;
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5805D8, &qword_25314BF18) + 48);
      *v44 = v89;
      sub_253149624();
      sub_253149424();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84160], v42);
      swift_willThrow();
      (*(v88 + 8))(v41, v33);
    }

    else
    {
      if (*(v37 + 32))
      {
        if (v39 == 1)
        {
          LOBYTE(v91) = 1;
          sub_2530C2984();
          v47 = v76;
          sub_253149614();
          v48 = v33;
          if (!v47)
          {
            v49 = v33;
            LOBYTE(v91) = 0;
            sub_2530C2930();
            v50 = v80;
            sub_253149664();
            v51 = v88;
            v62 = v15;
            v63 = v93;
            v92 = 1;
            sub_2530C29D8();
            sub_253149664();
            (*(v79 + 8))(v34, v50);
            (*(v51 + 8))(v62, v49);
            swift_unknownObjectRelease();
            v69 = v73;
            *v73 = v63;
            *(v69 + 8) = v91;
LABEL_21:
            swift_storeEnumTagMultiPayload();
            v67 = v69;
            goto LABEL_22;
          }
        }

        else
        {
          LOBYTE(v91) = 2;
          sub_2530C28DC();
          v54 = v35;
          v55 = v76;
          sub_253149614();
          v48 = v33;
          if (!v55)
          {
            v59 = v33;
            v85 = v15;
            sub_253148944();
            LOBYTE(v91) = 0;
            sub_2530C2A80(&qword_27F5805E8);
            v60 = v75;
            v61 = v81;
            sub_253149664();
            v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580588, &unk_25314BE80) + 48);
            LOBYTE(v91) = 1;
            sub_2530C2930();
            sub_253149664();
            v69 = v60;
            (*(v82 + 8))(v54, v61);
            (*(v88 + 8))(v85, v59);
            swift_unknownObjectRelease();
            goto LABEL_21;
          }
        }
      }

      else
      {
        LOBYTE(v91) = 0;
        sub_2530C2A2C();
        v52 = v32;
        v53 = v76;
        sub_253149614();
        v48 = v33;
        if (!v53)
        {
          v56 = v33;
          LOBYTE(v91) = 0;
          sub_2530C2930();
          v57 = v78;
          sub_253149664();
          v58 = v88;
          v64 = v52;
          v65 = v93;
          v92 = 1;
          sub_2530C29D8();
          sub_253149664();
          (*(v77 + 8))(v64, v57);
          (*(v58 + 8))(v15, v56);
          swift_unknownObjectRelease();
          v66 = v72;
          *v72 = v65;
          *(v66 + 8) = v91;
          swift_storeEnumTagMultiPayload();
          v67 = v66;
LABEL_22:
          v70 = v74;
          sub_2530C2594(v67, v74, type metadata accessor for XPCModelStateChange);
          sub_2530C2594(v70, v36, type metadata accessor for XPCModelStateChange);
          return __swift_destroy_boxed_opaque_existential_0(v90);
        }
      }

      (*(v88 + 8))(v15, v48);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v90);
}

uint64_t sub_2530C1A24()
{
  v1 = *v0;
  sub_253149814();
  MEMORY[0x259BFD420](v1);
  return sub_253149844();
}

uint64_t sub_2530C1A6C()
{
  v1 = *v0;
  sub_253149814();
  MEMORY[0x259BFD420](v1);
  return sub_253149844();
}

uint64_t sub_2530C1AB0()
{
  v1 = 0x657461647075;
  if (*v0 != 1)
  {
    v1 = 0x6574656C6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6579297;
  }
}

uint64_t sub_2530C1AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2530C3258(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2530C1B30(uint64_t a1)
{
  v2 = sub_2530C2888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2530C1B6C(uint64_t a1)
{
  v2 = sub_2530C2888();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2530C1BA8(uint64_t a1)
{
  v2 = sub_2530C28DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2530C1BE4(uint64_t a1)
{
  v2 = sub_2530C28DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2530C1C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_253149734() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_253149734();

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

uint64_t sub_2530C1CEC(uint64_t a1)
{
  v2 = sub_2530C2984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2530C1D28(uint64_t a1)
{
  v2 = sub_2530C2984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2530C1D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for XPCModelStateChange();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AnyModelStateChange(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2530C24CC(a1, v7, type metadata accessor for XPCModelStateChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v47 = v9;
      v49 = v8;
      v50 = a2;
      v14 = *(v7 + 1);
      v15 = *(v7 + 2);
      LOBYTE(v54[0]) = *v7;
      v16 = HomesStore.ModelType.metaType.getter();
      v18 = v17;
      v19 = sub_2531491F4();
      v48 = &v44;
      v20 = *(v19 - 8);
      v21 = *(v20 + 64);
      MEMORY[0x28223BE20](v19);
      v23 = &v44 - v22;
      v24 = *(v18 + 8);
      sub_25311A1FC(v14, v15);
      v45 = v19;
      v46 = v20;
      v39 = *(v16 - 8);
      if ((*(*(v16 - 8) + 48))(v23, 1, v16) == 1)
      {
        sub_2530C2534(a1, type metadata accessor for XPCModelStateChange);
        sub_2530C2478(v14, v15);
        (*(v46 + 8))(v23, v45);
        v9 = v47;
LABEL_11:
        v8 = v49;
        v38 = 1;
        a2 = v50;
        return (*(v9 + 56))(a2, v38, 1, v8);
      }

      v52 = v16;
      v53 = v18;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v51);
      (*(v39 + 32))(boxed_opaque_existential_0, v23, v16);
      sub_2530C2478(v14, v15);
      sub_2530C2534(a1, type metadata accessor for XPCModelStateChange);
      sub_2530BDB14(&v51, v54);
      sub_2530BDB14(v54, v12);
      v8 = v49;
      swift_storeEnumTagMultiPayload();
      a2 = v50;
      v9 = v47;
    }

    else
    {
      sub_2530C2534(a1, type metadata accessor for XPCModelStateChange);
      v36 = v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580588, &unk_25314BE80) + 48)];
      v37 = sub_253148944();
      (*(*(v37 - 8) + 32))(v12, v7, v37);
      v12[*(type metadata accessor for AnyModelStateChange.Tombstone(0) + 20)] = v36;
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v47 = a1;
    v49 = v8;
    v50 = a2;
    v25 = *(v7 + 1);
    v26 = *(v7 + 2);
    LOBYTE(v54[0]) = *v7;
    v27 = HomesStore.ModelType.metaType.getter();
    v29 = v28;
    v30 = sub_2531491F4();
    v48 = &v44;
    v31 = *(v30 - 8);
    v32 = *(v31 + 64);
    MEMORY[0x28223BE20](v30);
    v34 = &v44 - v33;
    v35 = *(v29 + 8);
    sub_25311A1FC(v25, v26);
    v45 = v30;
    v46 = v31;
    v40 = *(v27 - 8);
    if ((*(*(v27 - 8) + 48))(v34, 1, v27) == 1)
    {
      sub_2530C2534(v47, type metadata accessor for XPCModelStateChange);
      sub_2530C2478(v25, v26);
      (*(v46 + 8))(v34, v45);
      goto LABEL_11;
    }

    v52 = v27;
    v53 = v29;
    v43 = __swift_allocate_boxed_opaque_existential_0(&v51);
    (*(v40 + 32))(v43, v34, v27);
    sub_2530C2478(v25, v26);
    sub_2530C2534(v47, type metadata accessor for XPCModelStateChange);
    sub_2530BDB14(&v51, v54);
    sub_2530BDB14(v54, v12);
    v8 = v49;
    swift_storeEnumTagMultiPayload();
    a2 = v50;
  }

  sub_2530C2594(v12, a2, type metadata accessor for AnyModelStateChange);
  v38 = 0;
  return (*(v9 + 56))(a2, v38, 1, v8);
}

uint64_t type metadata accessor for XPCModelStateChange()
{
  result = qword_27F580590;
  if (!qword_27F580590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2530C2478(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2530C24CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2530C2534(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2530C2594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2530C25FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_2530C274C()
{
  sub_2530C27C0();
  if (v0 <= 0x3F)
  {
    sub_2530C2820();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2530C27C0()
{
  if (!qword_27F5805A0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F5805A0);
    }
  }
}

void sub_2530C2820()
{
  if (!qword_27F5805A8)
  {
    sub_253148944();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F5805A8);
    }
  }
}

unint64_t sub_2530C2888()
{
  result = qword_27F5805D0;
  if (!qword_27F5805D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5805D0);
  }

  return result;
}

unint64_t sub_2530C28DC()
{
  result = qword_27F5805E0;
  if (!qword_27F5805E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5805E0);
  }

  return result;
}

unint64_t sub_2530C2930()
{
  result = qword_27F5805F0;
  if (!qword_27F5805F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5805F0);
  }

  return result;
}

unint64_t sub_2530C2984()
{
  result = qword_27F5805F8;
  if (!qword_27F5805F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5805F8);
  }

  return result;
}

unint64_t sub_2530C29D8()
{
  result = qword_27F580600;
  if (!qword_27F580600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580600);
  }

  return result;
}

unint64_t sub_2530C2A2C()
{
  result = qword_27F580608;
  if (!qword_27F580608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580608);
  }

  return result;
}

uint64_t sub_2530C2A80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_253148944();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2530C2AC4()
{
  result = qword_27F580638;
  if (!qword_27F580638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580638);
  }

  return result;
}

unint64_t sub_2530C2B18()
{
  result = qword_27F580640;
  if (!qword_27F580640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580640);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCModelStateChange.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for XPCModelStateChange.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s4RoomV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s4RoomV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2530C2E3C()
{
  result = qword_27F580648;
  if (!qword_27F580648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580648);
  }

  return result;
}

unint64_t sub_2530C2E94()
{
  result = qword_27F580650;
  if (!qword_27F580650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580650);
  }

  return result;
}

unint64_t sub_2530C2EEC()
{
  result = qword_27F580658;
  if (!qword_27F580658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580658);
  }

  return result;
}

unint64_t sub_2530C2F44()
{
  result = qword_27F580660;
  if (!qword_27F580660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580660);
  }

  return result;
}

unint64_t sub_2530C2F9C()
{
  result = qword_27F580668;
  if (!qword_27F580668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580668);
  }

  return result;
}

unint64_t sub_2530C2FF4()
{
  result = qword_27F580670;
  if (!qword_27F580670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580670);
  }

  return result;
}

unint64_t sub_2530C304C()
{
  result = qword_27F580678;
  if (!qword_27F580678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580678);
  }

  return result;
}

unint64_t sub_2530C30A4()
{
  result = qword_27F580680;
  if (!qword_27F580680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580680);
  }

  return result;
}

unint64_t sub_2530C30FC()
{
  result = qword_27F580688;
  if (!qword_27F580688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580688);
  }

  return result;
}

unint64_t sub_2530C3154()
{
  result = qword_27F580690;
  if (!qword_27F580690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580690);
  }

  return result;
}

unint64_t sub_2530C31AC()
{
  result = qword_27F580698;
  if (!qword_27F580698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580698);
  }

  return result;
}

unint64_t sub_2530C3204()
{
  result = qword_27F5806A0;
  if (!qword_27F5806A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5806A0);
  }

  return result;
}

uint64_t sub_2530C3258(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579297 && a2 == 0xE300000000000000;
  if (v3 || (sub_253149734() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657461647075 && a2 == 0xE600000000000000 || (sub_253149734() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C6564 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_253149734();

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

uint64_t sub_2530C3394(int a1)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580778, &qword_25314F570);
  v2 = *(v1 - 8);
  v48 = v1 - 8;
  v55 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8);
  v50 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = v44 - v6;
  v47 = sub_253148944();
  v7 = *(v47 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v47);
  MEMORY[0x28223BE20](v9);
  v11 = v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580780, &qword_25314C4E0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580788, &qword_25314F560);
  v18 = *(v17 - 8);
  v45 = v17;
  v46 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v44 - v20;
  (*(v13 + 104))(v16, *MEMORY[0x277D85778], v12);
  sub_253148DF4();
  (*(v13 + 8))(v16, v12);
  sub_253148934();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = *(v7 + 16);
  v24 = v47;
  v23(v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v47);
  v25 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  v53 = v7;
  v27 = v26 + v25;
  v29 = v49;
  v28 = v50;
  (*(v7 + 32))(v27, v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  v30 = v45;
  sub_253148E14();
  v54 = v11;
  v31 = v11;
  v32 = v30;
  v33 = v46;
  v23(v29, v31, v24);
  v34 = v44[1];
  v35 = v48;
  v36 = *(v33 + 16);
  v37 = v29 + *(v48 + 44);
  v52 = v21;
  v36(v37, v21, v32);
  *(v29 + *(v35 + 48)) = v51 & 1;
  v38 = v28;
  sub_2530CD26C(v29, v28, &qword_27F580778, &qword_25314F570);
  swift_beginAccess();
  v39 = *(v34 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v34 + 112) = v39;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v39 = sub_2530F4430(0, v39[2] + 1, 1, v39);
    *(v34 + 112) = v39;
  }

  v42 = v39[2];
  v41 = v39[3];
  if (v42 >= v41 >> 1)
  {
    v39 = sub_2530F4430(v41 > 1, v42 + 1, 1, v39);
  }

  v39[2] = v42 + 1;
  sub_2530CD2D4(v38, v39 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v42, &qword_27F580778, &qword_25314F570);
  *(v34 + 112) = v39;
  swift_endAccess();
  sub_2530CD33C(v29, &qword_27F580778, &qword_25314F570);
  (*(v53 + 8))(v54, v24);
  return (*(v33 + 8))(v52, v32);
}

uint64_t sub_2530C38D8(int a1)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807E0, &qword_25314C5B8);
  v2 = *(v1 - 8);
  v48 = v1 - 8;
  v55 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8);
  v50 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = v44 - v6;
  v47 = sub_253148944();
  v7 = *(v47 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v47);
  MEMORY[0x28223BE20](v9);
  v11 = v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807E8, &qword_25314C5C0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807F0, &qword_25314C5C8);
  v18 = *(v17 - 8);
  v45 = v17;
  v46 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v44 - v20;
  (*(v13 + 104))(v16, *MEMORY[0x277D85778], v12);
  sub_253148DF4();
  (*(v13 + 8))(v16, v12);
  sub_253148934();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = *(v7 + 16);
  v24 = v47;
  v23(v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v47);
  v25 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  v53 = v7;
  v27 = v26 + v25;
  v29 = v49;
  v28 = v50;
  (*(v7 + 32))(v27, v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  v30 = v45;
  sub_253148E14();
  v54 = v11;
  v31 = v11;
  v32 = v30;
  v33 = v46;
  v23(v29, v31, v24);
  v34 = v44[1];
  v35 = v48;
  v36 = *(v33 + 16);
  v37 = v29 + *(v48 + 44);
  v52 = v21;
  v36(v37, v21, v32);
  *(v29 + *(v35 + 48)) = v51 & 1;
  v38 = v28;
  sub_2530CD26C(v29, v28, &qword_27F5807E0, &qword_25314C5B8);
  swift_beginAccess();
  v39 = *(v34 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v34 + 112) = v39;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v39 = sub_2530F46F8(0, v39[2] + 1, 1, v39);
    *(v34 + 112) = v39;
  }

  v42 = v39[2];
  v41 = v39[3];
  if (v42 >= v41 >> 1)
  {
    v39 = sub_2530F46F8(v41 > 1, v42 + 1, 1, v39);
  }

  v39[2] = v42 + 1;
  sub_2530CD2D4(v38, v39 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v42, &qword_27F5807E0, &qword_25314C5B8);
  *(v34 + 112) = v39;
  swift_endAccess();
  sub_2530CD33C(v29, &qword_27F5807E0, &qword_25314C5B8);
  (*(v53 + 8))(v54, v24);
  return (*(v33 + 8))(v52, v32);
}

uint64_t sub_2530C3E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_253148944();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = sub_253148DE4();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    (*(v8 + 16))(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
    v17 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 4) = v15;
    (*(v8 + 32))(&v18[v17], &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    sub_253112858(0, 0, v13, a5, v18);
  }

  return result;
}

uint64_t sub_2530C4014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_2530C4034, a4, 0);
}

int64_t sub_2530C4034()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  swift_beginAccess();
  result = sub_2530CA414(sub_2530CD688, v3, &qword_27F580778, &qword_25314F570, sub_2530CB5C0);
  v5 = *(*(v2 + 112) + 16);
  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    sub_2530CB79C(result, v5, sub_2530F4430, &qword_27F580778, &qword_25314F570);
    swift_endAccess();

    v6 = v0[1];

    return v6();
  }

  return result;
}

uint64_t sub_2530C415C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_2530C417C, a4, 0);
}

int64_t sub_2530C417C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  swift_beginAccess();
  result = sub_2530CA414(sub_2530CD560, v3, &qword_27F5807E0, &qword_25314C5B8, sub_2530CB63C);
  v5 = *(*(v2 + 112) + 16);
  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    sub_2530CB79C(result, v5, sub_2530F46F8, &qword_27F5807E0, &qword_25314C5B8);
    swift_endAccess();

    v6 = v0[1];

    return v6();
  }

  return result;
}

uint64_t sub_2530C42A4()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F5806A8);
  __swift_project_value_buffer(v0, qword_27F5806A8);
  return sub_253148A84();
}

uint64_t sub_2530C43B4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  v1 = v0[19];

  v2 = v0[20];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2530C4420()
{
  v1 = v0;
  if (qword_27F580200 != -1)
  {
    swift_once();
  }

  v2 = sub_253148A94();
  __swift_project_value_buffer(v2, qword_27F5806A8);
  v3 = sub_253148A74();
  v4 = sub_253149094();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2530B8000, v3, v4, "Connection interrupted, cancelling subscriptions", v5, 2u);
    MEMORY[0x259BFDC60](v5, -1, -1);
  }

  result = swift_beginAccess();
  v7 = *(v1 + 152);
  *(v1 + 152) = MEMORY[0x277D84F90];
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_7;
    }
  }

  result = sub_2531492E4();
  v8 = result;
  if (!result)
  {
  }

LABEL_7:
  if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x259BFD000](v9, v7);
      }

      else
      {
        v13 = *(v7 + 8 * v9 + 32);
      }

      ++v9;
      sub_2530CB28C();
      v10 = swift_allocError();
      *v11 = 0;
      v12 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
      sub_253148EF4();
    }

    while (v8 != v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_2530C4630(uint64_t a1)
{
  if (qword_27F580200 != -1)
  {
    swift_once();
  }

  v3 = sub_253148A94();
  __swift_project_value_buffer(v3, qword_27F5806A8);

  v4 = sub_253148A74();
  v5 = sub_253149094();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    sub_253148944();
    sub_2530CCD48(&qword_27F5807B8, MEMORY[0x277CC95F0]);
    v8 = sub_2531496F4();
    v10 = sub_253146498(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2530B8000, v4, v5, "Removing subscription %s after invalidation", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x259BFDC60](v7, -1, -1);
    MEMORY[0x259BFDC60](v6, -1, -1);
  }

  swift_beginAccess();

  v11 = sub_2530CB9E4((v1 + 152), a1);

  v13 = *(v1 + 152);
  if (v13 >> 62)
  {
    if (v13 < 0)
    {
      v15 = *(v1 + 152);
    }

    result = sub_2531492E4();
    v14 = result;
    if (result >= v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14 >= v11)
    {
LABEL_7:
      sub_2530CBD0C(v11, v14);
      return swift_endAccess();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2530C486C(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return MEMORY[0x2822009F8](sub_2530C4890, v2, 0);
}

uint64_t sub_2530C4890()
{
  if (qword_27F580200 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_253148A94();
  __swift_project_value_buffer(v2, qword_27F5806A8);

  v3 = sub_253148A74();
  v4 = sub_253149094();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_2530B8000, v3, v4, "Registering for model updates for %ld model types", v7, 0xCu);
    MEMORY[0x259BFDC60](v7, -1, -1);
  }

  else
  {
    v8 = v0[13];
  }

  v9 = v0[13];
  sub_2530C25FC(v0[14] + 112, (v0 + 2));
  v10 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v11 = swift_allocObject();
  v0[15] = v11;
  *(v11 + 16) = v9;
  v12 = *v10;
  v0[16] = v12;

  return MEMORY[0x2822009F8](sub_2530C4A34, v12, 0);
}

uint64_t sub_2530C4A34()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = sub_2530CCD48(&qword_27F5806C8, type metadata accessor for XPCConnectionWrapper);
  v4 = swift_task_alloc();
  v0[17] = v4;
  v4[2] = v1;
  v4[3] = &unk_25314C550;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[18] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807A8, &qword_25314C560);
  *v6 = v0;
  v6[1] = sub_2530C4B90;

  return MEMORY[0x2822008A0](v0 + 10, v1, v3, 0xD000000000000019, 0x800000025314A7E0, sub_2530CCAE0, v4, v7);
}

uint64_t sub_2530C4B90()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v10 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);
    v5 = sub_2530C4E2C;
  }

  else
  {
    v6 = *(v2 + 136);
    v8 = *(v2 + 112);
    v7 = *(v2 + 120);

    *(v2 + 160) = *(v2 + 80);
    v5 = sub_2530C4CD0;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2530C4CD0()
{
  v1 = v0[20];
  v2 = v0[14];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  swift_beginAccess();

  MEMORY[0x259BFC870](v3);
  if (*((*(v2 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 152) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v9 = *((*(v2 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_253148CD4();
  }

  v4 = v0[14];
  v5 = v0[12];
  v10 = *(v0 + 10);
  sub_253148D14();
  swift_endAccess();
  v6 = swift_allocObject();
  *(v6 + 16) = v10;
  *(v6 + 32) = v4;
  type metadata accessor for AnyModelStateChange(0);

  sub_253148F34();
  v7 = v0[1];

  return v7();
}

uint64_t sub_2530C4E2C()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];

  return MEMORY[0x2822009F8](sub_2530C4EA0, v3, 0);
}

uint64_t sub_2530C4EA0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v2 = v0[19];

  return v1();
}

uint64_t sub_2530C4F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D0, &qword_25314C5A0);
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v3[13] = *(v5 + 64);
  v3[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D8, &unk_25314D920);
  v3[15] = v6;
  v7 = *(v6 - 8);
  v3[16] = v7;
  v8 = *(v7 + 64) + 15;
  v3[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  v3[18] = v9;
  v10 = *(v9 - 8);
  v3[19] = v10;
  v11 = *(v10 + 64) + 15;
  v3[20] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C8, &qword_25314D940);
  v3[21] = v12;
  v13 = *(v12 - 8);
  v3[22] = v13;
  v14 = *(v13 + 64) + 15;
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530C5114, 0, 0);
}

uint64_t sub_2530C5114()
{
  v1 = v0[10];
  v2 = *(v1 + 16);
  if (v2)
  {
    v34 = MEMORY[0x277D84F90];
    sub_2530F4D50(0, v2, 0);
    v3 = (v1 + 32);
    v4 = *(v34 + 16);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *(v34 + 24);
      if (v4 >= v7 >> 1)
      {
        sub_2530F4D50((v7 > 1), v4 + 1, 1);
      }

      *(v34 + 16) = v4 + 1;
      *(v34 + 8 * v4++ + 32) = v5;
      --v2;
    }

    while (v2);
  }

  v8 = v0[23];
  v9 = v0[20];
  v27 = v0[22];
  v28 = v0[21];
  v10 = v0[19];
  v11 = v0[16];
  v12 = v0[17];
  v13 = v0[15];
  v31 = v0[14];
  v32 = v0[13];
  v25 = v0[12];
  v26 = v0[18];
  v29 = v0[9];
  v30 = v0[11];
  v33 = v0[8];
  v14 = type metadata accessor for XPCSubscription();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  sub_253148934();
  type metadata accessor for AnyModelStateChange(0);
  (*(v11 + 104))(v12, *MEMORY[0x277D858A0], v13);
  sub_253148ED4();
  (*(v11 + 8))(v12, v13);
  (*(v10 + 32))(v17 + OBJC_IVAR____TtC11HomeKitCore15XPCSubscription_continuation, v9, v26);
  (*(v27 + 32))(v17 + OBJC_IVAR____TtC11HomeKitCore15XPCSubscription_changes, v8, v28);

  v18 = sub_253148C84();

  (*(v25 + 16))(v31, v29, v30);
  v19 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v20 = swift_allocObject();
  (*(v25 + 32))(v20 + v19, v31, v30);
  *(v20 + ((v32 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
  v0[6] = sub_2530CD050;
  v0[7] = v20;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2530C556C;
  v0[5] = &block_descriptor_122;
  v21 = _Block_copy(v0 + 2);
  v22 = v0[7];

  [v33 registerObserver:v17 modelTypes:v18 completionHandler:v21];
  _Block_release(v21);

  v23 = v0[1];

  return v23();
}

uint64_t sub_2530C54AC(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D0, &qword_25314C5A0);
    return sub_253148D94();
  }

  if (!a1)
  {
    sub_2530CB28C();
    swift_allocError();
    *v4 = 1;
    goto LABEL_3;
  }

  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D0, &qword_25314C5A0);
  return sub_253148DA4();
}

uint64_t sub_2530C556C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2530C55EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2530C5610, 0, 0);
}

uint64_t sub_2530C5610()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D85A10] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807B0, &qword_25314D460);
  *v4 = v0;
  v4[1] = sub_2530C5714;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return MEMORY[0x282200830](v6, &unk_25314C580, v7, sub_2530CCC7C, v2, 0, 0, v5);
}

uint64_t sub_2530C5714()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2530C5850, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2530C5850()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_2530C58B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C0, &qword_25314C598);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530C5980, 0, 0);
}

uint64_t sub_2530C5980()
{
  v1 = v0[6];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C8, &qword_25314D940);
  sub_253148E54();
  v3 = *(MEMORY[0x277D858C0] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_2530C5A5C;
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[2];

  return MEMORY[0x2822005B0](v7, v6);
}

uint64_t sub_2530C5A5C()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_2530C5BF0;
  }

  else
  {
    v3 = sub_2530C5B70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2530C5B70()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2530C5BF0()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v2 = v0[8];

  return v1();
}

uint64_t sub_2530C5C70(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  if (qword_27F580200 != -1)
  {
    swift_once();
  }

  v9 = sub_253148A94();
  __swift_project_value_buffer(v9, qword_27F5806A8);
  v10 = sub_253148A74();
  v11 = sub_253149094();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2530B8000, v10, v11, "Stream has been cancelled, cleaning up...", v12, 2u);
    MEMORY[0x259BFDC60](v12, -1, -1);
  }

  [a1 cancel];
  v13 = sub_253148DE4();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v14;
  v15[5] = a3;

  sub_253112858(0, 0, v8, &unk_25314C590, v15);
}

uint64_t sub_2530C5E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_2530C5E9C, 0, 0);
}

uint64_t sub_2530C5E9C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2530C5F54, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_2530C5F54()
{
  v1 = *(v0 + 56);
  sub_2530C4630(*(v0 + 48));

  return MEMORY[0x2822009F8](sub_2530C5FBC, 0, 0);
}

uint64_t sub_2530C5FBC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2530C601C()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580760, &qword_25314C4B8);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v1[6] = *(v4 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530C6134, v0, 0);
}

uint64_t sub_2530C6134()
{
  v1 = v0[2];
  if (v1[20])
  {
    v2 = v0[7];
    v3 = v0[8];
    v4 = v0[3];
    sub_2530CB28C();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = __swift_project_boxed_opaque_existential_1(v1 + 14, v1[17]);
    v9 = *v8;
    v0[9] = *v8;

    return MEMORY[0x2822009F8](sub_2530C624C, v9, 0);
  }
}

uint64_t sub_2530C624C()
{
  v1 = *(*(v0 + 72) + 120);
  *(v0 + 80) = v1;
  return MEMORY[0x2822009F8](sub_2530C6270, v1, 0);
}

uint64_t sub_2530C6270()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[2];
  sub_2530C3394(1);

  return MEMORY[0x2822009F8](sub_2530C62E4, v3, 0);
}

uint64_t sub_2530C62E4()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v17 = v5;
  v7 = v0[2];
  v8 = sub_253148DE4();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v1, v2, v6);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v4 + 32))(v12 + v10, v1, v6);
  *(v12 + v11) = v9;
  v13 = sub_253112858(0, 0, v17, &unk_25314C4C8, v12);
  (*(v4 + 8))(v2, v6);
  v14 = *(v7 + 160);
  *(v7 + 160) = v13;

  v15 = v0[1];

  return v15();
}

uint64_t sub_2530C64BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580768, &qword_25314C4D0);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530C6588, 0, 0);
}

uint64_t sub_2530C6588()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580760, &qword_25314C4B8);
  sub_253148E54();
  swift_beginAccess();
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_2530C6670;
  v6 = v0[9];
  v7 = v0[7];

  return MEMORY[0x2822003E8](v0 + 12, 0, 0, v7);
}

uint64_t sub_2530C6670()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2530C676C, 0, 0);
}

uint64_t sub_2530C676C()
{
  if ((*(v0 + 96) & 1) != 0 || (v1 = *(v0 + 48), Strong = swift_weakLoadStrong(), (*(v0 + 88) = Strong) == 0))
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2530C683C, Strong, 0);
  }
}

uint64_t sub_2530C683C()
{
  v1 = *(v0 + 88);
  sub_2530C4420();

  return MEMORY[0x2822009F8](sub_2530C68A4, 0, 0);
}

uint64_t sub_2530C68A4()
{
  v1 = v0[11];

  v2 = *(MEMORY[0x277D85798] + 4);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_2530C6670;
  v4 = v0[9];
  v5 = v0[7];

  return MEMORY[0x2822003E8](v0 + 12, 0, 0, v5);
}

uint64_t sub_2530C6954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a2;
  v4[9] = a3;
  v4[7] = a1;
  return MEMORY[0x2822009F8](sub_2530C6978, v3, 0);
}

uint64_t sub_2530C6978()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v0[5] = &_s14descr2864E9281O3XPCC5ProxyVN;
  v0[6] = &off_2864EA688;
  v1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_2530C6A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807A0, &qword_25314C520);
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v4[14] = *(v6 + 64);
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530C6AF4, 0, 0);
}

uint64_t sub_2530C6AF4()
{
  v16 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[8];
  v7 = v0[9];
  (*(v0[11] + 48))(&v15);
  v8 = v15;
  (*(v4 + 16))(v1, v7, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v1, v3);
  v0[6] = sub_2530CC990;
  v0[7] = v10;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2530C6C94;
  v0[5] = &block_descriptor_80;
  v11 = _Block_copy(v0 + 2);
  v12 = v0[7];

  [v6 fetchModelsWithType:v8 completionHandler:v11];
  _Block_release(v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_2530C6C94(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_253148C94();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_2530C6D2C(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[27] = a1;
  v2[28] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5806C0, &qword_25314C460);
  v2[29] = v3;
  v4 = *(v3 - 8);
  v2[30] = v4;
  v5 = *(v4 + 64) + 15;
  v2[31] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2530C6E24, v1, 0);
}

uint64_t sub_2530C6E24()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 224);
  if (*(v1 + 160))
  {
    v2 = *MEMORY[0x277D85DE8];
    v3 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_2530C70C0, v1, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 256) = v4;
    *v4 = v0;
    v4[1] = sub_2530C6F38;
    v5 = *(v0 + 224);
    v6 = *MEMORY[0x277D85DE8];

    return sub_2530C601C();
  }
}

uint64_t sub_2530C6F38()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 248);

    v6 = *(v4 + 8);
    v7 = *MEMORY[0x277D85DE8];

    return v6();
  }

  else
  {
    v9 = *(v2 + 224);
    v10 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_2530C70C0, v9, 0);
  }
}

uint64_t sub_2530C70C0()
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = v0[27];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2530F4D50(0, v2, 0);
    v3 = v14;
    v4 = (v1 + 32);
    v5 = *(v14 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v8 = *(v14 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_2530F4D50((v8 > 1), v5 + 1, 1);
      }

      *(v14 + 16) = v5 + 1;
      *(v14 + 8 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  sub_2530C25FC(v0[28] + 112, (v0 + 2));
  v9 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v10 = swift_allocObject();
  v0[33] = v10;
  *(v10 + 16) = v3;
  v11 = *v9;
  v0[34] = *v9;
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2530C7230, v11, 0);
}

uint64_t sub_2530C7230()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = v0[33];
  v1 = v0[34];
  v3 = sub_2530CCD48(&qword_27F5806C8, type metadata accessor for XPCConnectionWrapper);
  v4 = swift_task_alloc();
  v0[35] = v4;
  v4[2] = v1;
  v4[3] = &unk_25314C478;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[36] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5806D0, &qword_25314C480);
  *v6 = v0;
  v6[1] = sub_2530C73B8;
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822008A0](v0 + 25, v1, v3, 0xD000000000000019, 0x800000025314A7E0, sub_2530CA9D0, v4, v7);
}

uint64_t sub_2530C73B8()
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 288);
  v13 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = v2[34];
    v5 = *MEMORY[0x277D85DE8];
    v6 = sub_2530C7FB8;
  }

  else
  {
    v7 = v2[35];
    v8 = v2[33];
    v9 = v2[28];

    v2[38] = v2[25];
    v10 = *MEMORY[0x277D85DE8];
    v6 = sub_2530C7540;
    v4 = v9;
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

uint64_t sub_2530C7540()
{
  v78 = v0;
  v77[2] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 304);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v72 = *MEMORY[0x277CCA308];
  v73 = v1;
  v7 = *(v0 + 296);

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v70 = v6;
  v71 = v1 + 64;
  while (1)
  {
    v76 = v9;
    if (!v5)
    {
      break;
    }

LABEL_11:
    v11 = (v8 << 10) | (16 * __clz(__rbit64(v5)));
    v12 = *(*(v73 + 48) + v11 + 8);
    v13 = (*(v73 + 56) + v11);
    v14 = *v13;
    v15 = v13[1];
    v16 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_2530CAA1C(v14, v15);
    sub_2530CAA1C(v14, v15);

    v17 = sub_2531488A4();
    *(v0 + 208) = 0;
    v18 = [v16 initForReadingFromData:v17 error:v0 + 208];

    v19 = *(v0 + 208);
    if (!v18)
    {
      v59 = *(v0 + 304);
      v60 = v19;
      sub_253148844();

      swift_willThrow();
      sub_2530C2478(v14, v15);
LABEL_58:

      v62 = *(v0 + 304);
      sub_2530C2478(v14, v15);

      v63 = *(v0 + 248);

      v64 = *(v0 + 8);
      v65 = *MEMORY[0x277D85DE8];

      return v64();
    }

    v20 = v19;
    sub_2530C2478(v14, v15);
    sub_253148B64();
    sub_2530CAA70();
    sub_2531490E4();
    if (v7)
    {
      v61 = *(v0 + 304);

      goto LABEL_58;
    }

    v74 = v15;

    v21 = *(v0 + 176);
    if (v21 == 8)
    {
      *(v0 + 128) = 0;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;

      sub_2530C2478(v14, v74);
    }

    else
    {
      v22 = *(v0 + 184);
      v23 = *(v0 + 192);
      v24 = *(v0 + 176);
      v68 = *(v0 + 176);
      v69 = v14;
      if (v21 > 3u)
      {
        if (*(v0 + 176) > 5u)
        {
          if (v24 == 6)
          {
            v25 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice();
            v26 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice;
            v27 = &unk_27F5806F0;
          }

          else
          {
            v25 = type metadata accessor for HomesStore.User.SharedSettings();
            v26 = type metadata accessor for HomesStore.User.SharedSettings;
            v27 = &unk_27F5806E8;
          }
        }

        else if (v24 == 4)
        {
          v25 = type metadata accessor for HomesStore.User();
          v26 = type metadata accessor for HomesStore.User;
          v27 = &unk_27F580700;
        }

        else
        {
          v25 = type metadata accessor for HomesStore.Zone();
          v26 = type metadata accessor for HomesStore.Zone;
          v27 = &unk_27F5806F8;
        }
      }

      else if (*(v0 + 176) > 1u)
      {
        if (v24 == 2)
        {
          v25 = type metadata accessor for HomesStore.Home();
          v26 = type metadata accessor for HomesStore.Home;
          v27 = &unk_27F580710;
        }

        else
        {
          v25 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
          v26 = type metadata accessor for HomesStore.HomesRelationshipModel;
          v27 = &unk_27F580708;
        }
      }

      else if (*(v0 + 176))
      {
        v25 = type metadata accessor for HomesStore.Room();
        v26 = type metadata accessor for HomesStore.Room;
        v27 = &unk_27F580718;
      }

      else
      {
        v25 = type metadata accessor for HomesStore.Accessory();
        v26 = type metadata accessor for HomesStore.Accessory;
        v27 = &unk_27F580720;
      }

      v28 = sub_2530CCD48(v27, v26);
      v67 = sub_2531491F4();
      v29 = *(v67 - 8);
      v30 = *(v29 + 64) + 15;
      v31 = swift_task_alloc();
      sub_2530CAA1C(v22, v23);
      v32 = v28;
      v33 = *(v28 + 8);
      v34 = v22;
      sub_25311A1FC(v22, v23);
      sub_2530CAAC4(v68, v22, v23);
      v35 = *(v25 - 8);
      if ((*(v35 + 48))(v31, 1, v25) == 1)
      {
        sub_2530CAAC4(v68, v34, v23);
        (*(v29 + 8))(v31, v67);

        *(v0 + 128) = 0;
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;

        sub_2530C2478(v69, v74);
      }

      else
      {
        *(v0 + 120) = v25;
        *(v0 + 128) = v32;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 96));
        (*(v35 + 32))(boxed_opaque_existential_0, v31, v25);
        sub_2530CAAC4(v68, v34, v23);

        sub_2530C2478(v69, v74);
      }

      v9 = v76;
    }

    v6 = v70;
    v2 = v71;
    v37 = (v0 + 96);
    if (*(v0 + 120))
    {
      sub_2530BDB14(v37, v0 + 56);
      sub_2530BDB14((v0 + 56), v0 + 136);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_2530F4454(0, v9[2] + 1, 1, v9);
      }

      v39 = v9[2];
      v38 = v9[3];
      if (v39 >= v38 >> 1)
      {
        v9 = sub_2530F4454((v38 > 1), v39 + 1, 1, v9);
      }

      v9[2] = v39 + 1;
      sub_2530BDB14((v0 + 136), &v9[5 * v39 + 4]);
    }

    else
    {
      sub_2530CD33C(v37, &qword_27F5806E0, &qword_25314D900);
    }

    v7 = 0;
    v5 &= v5 - 1;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  v40 = *(v0 + 304);

  v41 = v9[2];
  if (v41)
  {
    v75 = v7;
    v42 = *(v0 + 232);
    v43 = *(v0 + 240);
    v77[0] = MEMORY[0x277D84F90];
    sub_2530F4D70(0, v41, 0);
    v44 = v77[0];
    v45 = (v9 + 4);
    do
    {
      v46 = (*(v0 + 248) + *(v42 + 48));
      sub_2530C25FC(v45, v46);
      v47 = v46[4];
      __swift_project_boxed_opaque_existential_1(v46, v46[3]);
      v48 = *(v47 + 32);
      sub_2531493D4();
      v77[0] = v44;
      v50 = *(v44 + 16);
      v49 = *(v44 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_2530F4D70(v49 > 1, v50 + 1, 1);
        v44 = v77[0];
      }

      v51 = *(v0 + 248);
      *(v44 + 16) = v50 + 1;
      sub_2530CD2D4(v51, v44 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v50, &qword_27F5806C0, &qword_25314C460);
      v45 += 40;
      --v41;
    }

    while (v41);

    v7 = v75;
    if (*(v44 + 16))
    {
      goto LABEL_46;
    }
  }

  else
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_46:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580728, &qword_25314C488);
      v52 = sub_2531495D4();
      goto LABEL_49;
    }
  }

  v52 = MEMORY[0x277D84F98];
LABEL_49:
  v77[0] = v52;

  sub_2530CAAE0(v53, 1, v77);
  if (v7)
  {
    v54 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2821FEBD8](v7, "Swift/Dictionary.swift", 22, 1, 490);
  }

  else
  {
    v55 = *(v0 + 248);

    v56 = v77[0];

    v57 = *(v0 + 8);
    v58 = *MEMORY[0x277D85DE8];

    return v57(v56);
  }
}

uint64_t sub_2530C7FB8()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[28];

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2530C8064, v3, 0);
}

uint64_t sub_2530C8064()
{
  v6 = *MEMORY[0x277D85DE8];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[37];
  v2 = v0[31];

  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_2530C80FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580738, &qword_25314C490);
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v3[13] = *(v5 + 64);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530C81D4, 0, 0);
}

uint64_t sub_2530C81D4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  v8 = sub_253148C84();
  (*(v4 + 16))(v1, v6, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v1, v3);
  v0[6] = sub_2530CB278;
  v0[7] = v10;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2530C841C;
  v0[5] = &block_descriptor_33;
  v11 = _Block_copy(v0 + 2);
  v12 = v0[7];

  [v7 fetchModelsWithTypes:v8 completionHandler:v11];
  _Block_release(v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_2530C8368(uint64_t a1, id a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2)
  {
    v7 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_253148D94();
  }

  if (!a1)
  {
    sub_2530CB28C();
    swift_allocError();
    *v9 = 1;
    goto LABEL_3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  return sub_253148DA4();
}

uint64_t sub_2530C841C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_253148AD4();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_2530C84C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2530C84E8, v2, 0);
}

uint64_t sub_2530C84E8()
{
  v1 = *(v0 + 32);
  if (*(v1 + 160))
  {

    return MEMORY[0x2822009F8](sub_2530C86FC, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_2530C85B8;
    v3 = *(v0 + 32);

    return sub_2530C601C();
  }
}

uint64_t sub_2530C85B8()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 32);

    return MEMORY[0x2822009F8](sub_2530C86FC, v7, 0);
  }
}

uint64_t sub_2530C86FC()
{
  v15 = v0;
  v1 = v0[3];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    sub_2530F4DB0(0, v2, 0);
    v3 = v13;
    v4 = v1 + 40;
    do
    {
      v5 = *(v4 - 8);
      (*(*v4 + 48))(&v14);
      v6 = v14;
      v8 = *(v13 + 16);
      v7 = *(v13 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2530F4DB0((v7 > 1), v8 + 1, 1);
      }

      *(v13 + 16) = v8 + 1;
      *(v13 + v8 + 32) = v6;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  v0[6] = v3;
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_2530C885C;
  v10 = v0[4];
  v11 = v0[2];

  return sub_2530C486C(v11, v3);
}

uint64_t sub_2530C885C()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x2822009F8](sub_2530C8998, v4, 0);
  }

  else
  {
    v5 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2530C8998()
{
  v1 = v0[6];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2530C89FC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2530BF218;

  return sub_2530C84C4(a1, a2);
}

uint64_t sub_2530C8AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_2530CD6C0;

  return sub_2530CBDE4(a3, a4);
}

uint64_t sub_2530C8B64()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2530C8C20;

  return sub_2530CC53C();
}

uint64_t sub_2530C8C20(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2530C8D20(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2530CD6C0;

  return sub_2530C6D2C(a1);
}

uint64_t sub_2530C8DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2530CD684;

  return sub_2530C6954(a1, a2, a3);
}

uint64_t sub_2530C8E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v26 = a3;
  v27 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v26 - v18;
  v20 = sub_253148DE4();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v12 + 16))(v15, a1, v11);
  v21 = sub_2530CCD48(&qword_27F5806C8, type metadata accessor for XPCConnectionWrapper);
  v22 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = a2;
  *(v23 + 3) = v21;
  *(v23 + 4) = a2;
  (*(v12 + 32))(&v23[v22], v15, v11);
  v24 = &v23[(v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v24 = v26;
  *(v24 + 1) = a4;
  swift_retain_n();

  sub_253112858(0, 0, v19, v27, v23);
}

uint64_t sub_2530C90B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F581E00, &unk_25314F540);
  v7[19] = v9;
  v10 = *(v9 - 8);
  v7[20] = v10;
  v11 = *(v10 + 64) + 15;
  v7[21] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D0, &qword_25314C5A0);
  v7[22] = v12;
  v13 = *(v12 - 8);
  v7[23] = v13;
  v7[24] = *(v13 + 64);
  v7[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530C91F4, a4, 0);
}

uint64_t sub_2530C91F4()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[15];
  (*(v3 + 16))(v1, v0[16], v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = *(v4 + 112);
  if (v7)
  {
    v8 = *(v4 + 112);
  }

  else
  {
    v10 = v0[20];
    v9 = v0[21];
    v11 = v0[19];
    v12 = v0[15];
    v13 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v14 = sub_253148B54();
    v15 = [v13 initWithMachServiceName:v14 options:4096];

    v0[12] = v15;
    v16 = sub_2530CB1C0();
    v8 = v15;
    MEMORY[0x259BFC580](v0 + 12, v16);
    sub_25310A894();
    (*(v10 + 8))(v9, v11);
    v7 = 0;
  }

  v0[6] = sub_2530CD03C;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2530CA3AC;
  v0[5] = &block_descriptor_115;
  v17 = _Block_copy(v0 + 2);
  v18 = v0[7];
  v19 = v7;

  v20 = [v8 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);

  sub_253149224();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580748, &qword_25314C4B0);
  if (swift_dynamicCast())
  {
    v21 = v0[17];
    v22 = v0[13];
    v0[26] = v22;

    v34 = (v21 + *v21);
    v23 = v21[1];
    v24 = swift_task_alloc();
    v0[27] = v24;
    *v24 = v0;
    v24[1] = sub_2530C95C8;
    v25 = v0[18];
    v26 = v0[16];

    return v34(v22, v26);
  }

  else
  {
    sub_2530CB224();
    v28 = swift_allocError();
    swift_willThrow();

    v29 = v0[22];
    v30 = v0[16];
    v0[14] = v28;
    sub_253148D94();
    v31 = v0[25];
    v32 = v0[21];

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_2530C95C8()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_2530C9768;
  }

  else
  {
    v6 = sub_2530C96F4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2530C96F4()
{
  v1 = v0[26];
  swift_unknownObjectRelease();
  v2 = v0[25];
  v3 = v0[21];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2530C9768()
{
  v1 = v0[26];
  swift_unknownObjectRelease();
  v2 = v0[22];
  v3 = v0[16];
  v0[14] = v0[28];
  sub_253148D94();
  v4 = v0[25];
  v5 = v0[21];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2530C97F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F581E00, &unk_25314F540);
  v7[19] = v9;
  v10 = *(v9 - 8);
  v7[20] = v10;
  v11 = *(v10 + 64) + 15;
  v7[21] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807A0, &qword_25314C520);
  v7[22] = v12;
  v13 = *(v12 - 8);
  v7[23] = v13;
  v7[24] = *(v13 + 64);
  v7[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530C9938, a4, 0);
}

uint64_t sub_2530C9938()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[15];
  (*(v3 + 16))(v1, v0[16], v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = *(v4 + 112);
  if (v7)
  {
    v8 = *(v4 + 112);
  }

  else
  {
    v10 = v0[20];
    v9 = v0[21];
    v11 = v0[19];
    v12 = v0[15];
    v13 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v14 = sub_253148B54();
    v15 = [v13 initWithMachServiceName:v14 options:4096];

    v0[12] = v15;
    v16 = sub_2530CB1C0();
    v8 = v15;
    MEMORY[0x259BFC580](v0 + 12, v16);
    sub_25310A894();
    (*(v10 + 8))(v9, v11);
    v7 = 0;
  }

  v0[6] = sub_2530CC8FC;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2530CA3AC;
  v0[5] = &block_descriptor_73;
  v17 = _Block_copy(v0 + 2);
  v18 = v0[7];
  v19 = v7;

  v20 = [v8 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);

  sub_253149224();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580748, &qword_25314C4B0);
  if (swift_dynamicCast())
  {
    v21 = v0[17];
    v22 = v0[13];
    v0[26] = v22;

    v34 = (v21 + *v21);
    v23 = v21[1];
    v24 = swift_task_alloc();
    v0[27] = v24;
    *v24 = v0;
    v24[1] = sub_2530C9D0C;
    v25 = v0[18];
    v26 = v0[16];

    return v34(v22, v26);
  }

  else
  {
    sub_2530CB224();
    v28 = swift_allocError();
    swift_willThrow();

    v29 = v0[22];
    v30 = v0[16];
    v0[14] = v28;
    sub_253148D94();
    v31 = v0[25];
    v32 = v0[21];

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_2530C9D0C()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_2530CD6A4;
  }

  else
  {
    v6 = sub_2530CD6A8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2530C9E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F581E00, &unk_25314F540);
  v7[19] = v9;
  v10 = *(v9 - 8);
  v7[20] = v10;
  v11 = *(v10 + 64) + 15;
  v7[21] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580738, &qword_25314C490);
  v7[22] = v12;
  v13 = *(v12 - 8);
  v7[23] = v13;
  v7[24] = *(v13 + 64);
  v7[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530C9F7C, a4, 0);
}

uint64_t sub_2530C9F7C()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[15];
  (*(v3 + 16))(v1, v0[16], v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = *(v4 + 112);
  if (v7)
  {
    v8 = *(v4 + 112);
  }

  else
  {
    v10 = v0[20];
    v9 = v0[21];
    v11 = v0[19];
    v12 = v0[15];
    v13 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v14 = sub_253148B54();
    v15 = [v13 initWithMachServiceName:v14 options:4096];

    v0[12] = v15;
    v16 = sub_2530CB1C0();
    v8 = v15;
    MEMORY[0x259BFC580](v0 + 12, v16);
    sub_25310A894();
    (*(v10 + 8))(v9, v11);
    v7 = 0;
  }

  v0[6] = sub_2530CB1AC;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2530CA3AC;
  v0[5] = &block_descriptor;
  v17 = _Block_copy(v0 + 2);
  v18 = v0[7];
  v19 = v7;

  v20 = [v8 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);

  sub_253149224();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580748, &qword_25314C4B0);
  if (swift_dynamicCast())
  {
    v21 = v0[17];
    v22 = v0[13];
    v0[26] = v22;

    v34 = (v21 + *v21);
    v23 = v21[1];
    v24 = swift_task_alloc();
    v0[27] = v24;
    *v24 = v0;
    v24[1] = sub_2530C9D0C;
    v25 = v0[18];
    v26 = v0[16];

    return v34(v22, v26);
  }

  else
  {
    sub_2530CB224();
    v28 = swift_allocError();
    swift_willThrow();

    v29 = v0[22];
    v30 = v0[16];
    v0[14] = v28;
    sub_253148D94();
    v31 = v0[25];
    v32 = v0[21];

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_2530CA350(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_253148D94();
}

void sub_2530CA3AC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2530CA414(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v51 = a5;
  v7 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v49 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  v53 = v5;
  v21 = *v5;
  v61 = a1;
  v22 = v63;
  result = sub_2530CA77C(a1, a2, v21, v7, a4);
  if (!v22)
  {
    v57 = v20;
    v52 = v18;
    v50 = v15;
    v63 = 0;
    if (v24)
    {
      return *(v21 + 16);
    }

    v55 = a2;
    v58 = a4;
    v60 = result;
    v25 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v26 = v21;
      v28 = (v21 + 16);
      v27 = *(v21 + 16);
      v29 = v57;
      if (v25 == v27)
      {
        return v60;
      }

      v30 = v61;
      v54 = v11;
      while (v25 < v27)
      {
        v31 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v62 = v26;
        v56 = v31;
        v32 = v26 + v31;
        v33 = v30;
        v34 = *(v11 + 72);
        v59 = v34 * v25;
        v35 = v7;
        v36 = v58;
        sub_2530CD26C(v32 + v34 * v25, v29, v7, v58);
        v37 = v29;
        v38 = v63;
        v39 = v33(v29);
        v40 = v37;
        v7 = v35;
        result = sub_2530CD33C(v40, v35, v36);
        v63 = v38;
        if (v38)
        {
          return result;
        }

        if (v39)
        {
          v30 = v61;
          v26 = v62;
          v11 = v54;
        }

        else
        {
          v41 = v60;
          if (v25 == v60)
          {
            v30 = v61;
            v26 = v62;
            v11 = v54;
          }

          else
          {
            if ((v60 & 0x8000000000000000) != 0)
            {
              goto LABEL_27;
            }

            v42 = *v28;
            if (v60 >= v42)
            {
              goto LABEL_28;
            }

            v43 = v34 * v60;
            v44 = v32 + v34 * v60;
            v45 = v58;
            result = sub_2530CD26C(v44, v52, v35, v58);
            if (v25 >= v42)
            {
              goto LABEL_29;
            }

            v46 = v50;
            sub_2530CD26C(v32 + v59, v50, v35, v45);
            v47 = v45;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v30 = v61;
              v26 = v62;
            }

            else
            {
              v26 = v51(v62);
              v30 = v61;
            }

            v11 = v54;
            v48 = v26 + v56;
            result = sub_2530CD590(v46, v26 + v56 + v43, v7, v47);
            if (v25 >= *(v26 + 16))
            {
              goto LABEL_30;
            }

            result = sub_2530CD590(v52, v48 + v59, v7, v47);
            *v53 = v26;
            v41 = v60;
          }

          v60 = v41 + 1;
        }

        v29 = v57;
        ++v25;
        v28 = (v26 + 16);
        v27 = *(v26 + 16);
        if (v25 == v27)
        {
          return v60;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2530CA77C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *(a3 + 16);
  if (!v6)
  {
    return 0;
  }

  v11 = 0;
  while (1)
  {
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) - 8);
    v13 = a1(a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11);
    if (v5 || (v13 & 1) != 0)
    {
      break;
    }

    if (v6 == ++v11)
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_2530CA884(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_2531492E4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_253149414();
  *v1 = result;
  return result;
}

uint64_t sub_2530CA924(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2530CD684;

  return sub_2530C80FC(a1, a2, v6);
}

uint64_t sub_2530CAA1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2530CAA70()
{
  result = qword_27F5806D8;
  if (!qword_27F5806D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5806D8);
  }

  return result;
}

uint64_t sub_2530CAAC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 8)
  {
    return sub_2530C2478(a2, a3);
  }

  return result;
}

void sub_2530CAAE0(uint64_t a1, char a2, void *a3)
{
  v7 = sub_253148944();
  v57 = *(v7 - 8);
  v8 = *(v57 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5806C0, &qword_25314C460);
  v56 = *(v11 - 8);
  v12 = *(v56 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v50 - v14;
  v54 = *(a1 + 16);
  if (!v54)
  {
    goto LABEL_24;
  }

  v50[1] = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = *(v13 + 48);
  v17 = *(v56 + 80);
  v55 = a1;
  v18 = (v57 + 32);
  v52 = a1 + ((v17 + 32) & ~v17);
  sub_2530CD26C(v52, v15, &qword_27F5806C0, &qword_25314C460);
  v51 = *v18;
  v51(v10, v15, v7);
  v53 = v16;
  sub_2530BDB14(&v15[v16], v60);
  v19 = *a3;
  v21 = sub_25311D834(v10);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v25 = v20;
  if (v19[3] >= v24)
  {
    if (a2)
    {
      if ((v20 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_25312B6DC();
      if ((v25 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_25312C8DC(v24, a2 & 1);
  v26 = *a3;
  v27 = sub_25311D834(v10);
  if ((v25 & 1) == (v28 & 1))
  {
    v21 = v27;
    if ((v25 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v51((v31[6] + *(v57 + 72) * v21), v10, v7);
      sub_2530BDB14(v60, v31[7] + 40 * v21);
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v34;
      if (v54 != 1)
      {
        v35 = 1;
        while (v35 < *(v55 + 16))
        {
          sub_2530CD26C(v52 + *(v56 + 72) * v35, v15, &qword_27F5806C0, &qword_25314C460);
          v36 = *v18;
          (*v18)(v10, v15, v7);
          sub_2530BDB14(&v15[v53], v60);
          v37 = *a3;
          v38 = sub_25311D834(v10);
          v40 = v37[2];
          v41 = (v39 & 1) == 0;
          v33 = __OFADD__(v40, v41);
          v42 = v40 + v41;
          if (v33)
          {
            goto LABEL_26;
          }

          v43 = v39;
          if (v37[3] < v42)
          {
            sub_25312C8DC(v42, 1);
            v44 = *a3;
            v38 = sub_25311D834(v10);
            if ((v43 & 1) != (v45 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v43)
          {
            goto LABEL_11;
          }

          v46 = *a3;
          *(*a3 + 8 * (v38 >> 6) + 64) |= 1 << v38;
          v47 = v38;
          v36((v46[6] + *(v57 + 72) * v38), v10, v7);
          sub_2530BDB14(v60, v46[7] + 40 * v47);
          v48 = v46[2];
          v33 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v33)
          {
            goto LABEL_27;
          }

          ++v35;
          v46[2] = v49;
          if (v54 == v35)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v29 = swift_allocError();
    swift_willThrow();
    v61 = v29;
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580730, &qword_25314F190);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_0(v60);
      (*(v57 + 8))(v10, v7);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_253149784();
  __break(1u);
LABEL_29:
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_2531493C4();
  MEMORY[0x259BFC7D0](0xD00000000000001BLL, 0x800000025314A840);
  sub_253149544();
  MEMORY[0x259BFC7D0](39, 0xE100000000000000);
  sub_253149594();
  __break(1u);
}

uint64_t sub_2530CB064(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580738, &qword_25314C490) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2530CD684;

  return sub_2530C9E38(a1, v7, v8, v9, v1 + v6, v11, v12);
}

unint64_t sub_2530CB1C0()
{
  result = qword_27F580740;
  if (!qword_27F580740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F580740);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2530CB224()
{
  result = qword_27F580750;
  if (!qword_27F580750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580750);
  }

  return result;
}

unint64_t sub_2530CB28C()
{
  result = qword_27F580758;
  if (!qword_27F580758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580758);
  }

  return result;
}

uint64_t sub_2530CB2E0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580760, &qword_25314C4B8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2530BF218;

  return sub_2530C64BC(a1, v6, v7, v1 + v5, v8);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_2530CB4C8(uint64_t a1)
{
  v4 = *(sub_253148944() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2530CD684;

  return sub_2530C4014(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2530CB5D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2531492E4();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_253149414();
}

unint64_t sub_2530CB650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *v5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v17 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_2530CB79C(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v7 + 24) >> 1)
  {
    v7 = a3();
    *v5 = v7;
  }

  result = sub_2530CB650(v9, a2, 0, a4, a5);
  *v5 = v7;
  return result;
}

unint64_t sub_2530CB8E0(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_2531492E4();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x259BFD000](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_2530CB9E4(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_2530CB8E0(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_2531492E4();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_2531492E4())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v19 = MEMORY[0x259BFD000](v11, v7);
    swift_unknownObjectRelease();
    if (v19 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x259BFD000](v10, v7);
        v16 = MEMORY[0x259BFD000](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_2530CB5D8(v7);
          v17 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v16;

        if ((v7 & 0x8000000000000000) != 0 || v17)
        {
          v7 = sub_2530CB5D8(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return sub_2531492E4();
}

uint64_t sub_2530CBC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for XPCSubscription();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_2531492E4();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_2531492E4();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2530CBD0C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_2531492E4();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_2531492E4();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_2530CA884(result);

  return sub_2530CBC0C(v4, v2, 0);
}

uint64_t sub_2530CBDE4(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_2530CBE08, v2, 0);
}

uint64_t sub_2530CBE08()
{
  v1 = *(v0 + 88);
  if (*(v1 + 160))
  {

    return MEMORY[0x2822009F8](sub_2530CC01C, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_2530CBED8;
    v3 = *(v0 + 88);

    return sub_2530C601C();
  }
}

uint64_t sub_2530CBED8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 88);

    return MEMORY[0x2822009F8](sub_2530CC01C, v7, 0);
  }
}

uint64_t sub_2530CC01C()
{
  v5 = *(v0 + 72);
  sub_2530C25FC(*(v0 + 88) + 112, v0 + 16);
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v2 = swift_allocObject();
  *(v0 + 104) = v2;
  *(v2 + 16) = v5;
  v3 = *v1;
  *(v0 + 112) = *v1;

  return MEMORY[0x2822009F8](sub_2530CC0C8, v3, 0);
}

uint64_t sub_2530CC0C8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = sub_2530CCD48(&qword_27F5806C8, type metadata accessor for XPCConnectionWrapper);
  v4 = swift_task_alloc();
  v0[15] = v4;
  v4[2] = v1;
  v4[3] = &unk_25314C510;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[16] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580790, &qword_25314C518);
  v0[17] = v7;
  *v6 = v0;
  v6[1] = sub_2530CC228;

  return MEMORY[0x2822008A0](v0 + 7, v1, v3, 0xD000000000000019, 0x800000025314A7E0, sub_2530CC688, v4, v7);
}

uint64_t sub_2530CC228()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v10 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = v2[14];
    v5 = sub_2530CC460;
  }

  else
  {
    v6 = v2[15];
    v7 = v2[13];
    v8 = v2[11];

    v2[19] = v2[7];
    v5 = sub_2530CC36C;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2530CC36C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v9 = *(v0 + 72);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  *(v0 + 64) = v2;
  *(swift_task_alloc() + 16) = v9;
  sub_2530CC708();
  v4 = sub_253148C34();
  v5 = *(v0 + 152);

  v7 = *(v0 + 8);
  if (!v1)
  {
    v6 = v4;
  }

  return v7(v6);
}

uint64_t sub_2530CC460()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[11];

  return MEMORY[0x2822009F8](sub_2530CC4D8, v3, 0);
}

uint64_t sub_2530CC4D8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[18];
  v2 = v0[1];

  return v2();
}

uint64_t sub_2530CC5D8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2530BF218;

  return sub_2530C6A1C(a1, a2, v7, v6);
}

uint64_t sub_2530CC6D4(uint64_t a1)
{
  v2 = *(*(v1 + 24) + 8);
  v3 = *(v1 + 16);
  return sub_25311A1FC(*a1, *(a1 + 8));
}

unint64_t sub_2530CC708()
{
  result = qword_27F580798;
  if (!qword_27F580798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F580790, &qword_25314C518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580798);
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

uint64_t sub_2530CC7B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807A0, &qword_25314C520) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2530CD684;

  return sub_2530C97F4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_2530CCA34(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2530CD684;

  return sub_2530C4F04(a1, a2, v6);
}

uint64_t sub_2530CCB2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2530CD684;

  return sub_2530C55EC(a1, v4, v5, v6);
}

uint64_t sub_2530CCBE0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2530CD684;

  return sub_2530C58B4(a1, v1);
}

uint64_t sub_2530CCC88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2530CD684;

  return sub_2530C5E7C(a1, v4, v5, v7, v6);
}

uint64_t sub_2530CCD48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_21Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + 16);
  swift_unknownObjectRelease();
  v8 = *(v2 + 32);

  (*(v4 + 8))(v2 + v5, v3);
  v9 = *(v2 + v6 + 8);

  return swift_deallocObject();
}

uint64_t sub_2530CCE70(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D0, &qword_25314C5A0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2530CD684;

  return sub_2530C90B0(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t objectdestroy_25Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), v3);

  return swift_deallocObject();
}

uint64_t sub_2530CD050(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D0, &qword_25314C5A0) - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2530C54AC(a1, a2);
}

uint64_t objectdestroy_47Tm()
{
  v1 = sub_253148944();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2530CD26C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2530CD2D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2530CD33C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_50Tm()
{
  v1 = sub_253148944();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2530CD468(uint64_t a1)
{
  v4 = *(sub_253148944() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2530CD684;

  return sub_2530C415C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2530CD590(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_2530CD61C()
{
  result = qword_27F5807F8;
  if (!qword_27F5807F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5807F8);
  }

  return result;
}

uint64_t sub_2530CD6C4()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F580800);
  __swift_project_value_buffer(v0, qword_27F580800);
  return sub_253148A84();
}

uint64_t sub_2530CD744()
{
  v1 = v0;
  if (qword_27F580208 != -1)
  {
    swift_once();
  }

  v2 = sub_253148A94();
  __swift_project_value_buffer(v2, qword_27F580800);
  v3 = sub_253148A74();
  v4 = sub_253149094();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2530B8000, v3, v4, "Cancelling subscription", v5, 2u);
    MEMORY[0x259BFDC60](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC11HomeKitCore12XPCPublisher_cancelationHandler + 8);
  return (*(v1 + OBJC_IVAR____TtC11HomeKitCore12XPCPublisher_cancelationHandler))();
}

id sub_2530CD880()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_27F580208 != -1)
  {
    swift_once();
  }

  v3 = sub_253148A94();
  __swift_project_value_buffer(v3, qword_27F580800);
  v4 = sub_253148A74();
  v5 = sub_253149094();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2530B8000, v4, v5, "Publisher deinit", v6, 2u);
    MEMORY[0x259BFDC60](v6, -1, -1);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t HomesStore.CoreData.CLIController.Error.hashValue.getter()
{
  sub_253149814();
  MEMORY[0x259BFD420](0);
  return sub_253149844();
}

uint64_t sub_2530CDA98()
{
  sub_253149814();
  MEMORY[0x259BFD420](0);
  return sub_253149844();
}

uint64_t sub_2530CDB04()
{
  sub_253149814();
  MEMORY[0x259BFD420](0);
  return sub_253149844();
}

BOOL sub_2530CDBBC(void *a1, uint64_t *a2)
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

void *sub_2530CDBEC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_2530CDC18@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_2530CDCF0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2530CDD24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t HomesStore.CoreData.CLIController.__allocating_init()()
{
  v0 = type metadata accessor for HomesStore.CoreData.Configuration(0);
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  *v4 = 0x746C7561666544;
  *(v4 + 1) = 0xE700000000000000;
  v6 = &v4[*(v1 + 28)];
  sub_25311A4D8();
  v7 = &v4[*(v1 + 32)];
  *v7 = 0xD00000000000001ELL;
  *(v7 + 1) = 0x800000025314AA90;
  type metadata accessor for HomesStore.CoreData.Configuration.StoreType(0);
  swift_storeEnumTagMultiPayload();
  *(v5 + 16) = _s11HomeKitCore10HomesStoreC0C4DataO19PersistentContainerC13configurationAgE13ConfigurationV_tcfC_0(v4);
  return v5;
}

uint64_t HomesStore.CoreData.CLIController.init()()
{
  v1 = type metadata accessor for HomesStore.CoreData.Configuration(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v5 = 0x746C7561666544;
  *(v5 + 1) = 0xE700000000000000;
  v6 = &v5[*(v2 + 28)];
  sub_25311A4D8();
  v7 = &v5[*(v2 + 32)];
  *v7 = 0xD00000000000001ELL;
  *(v7 + 1) = 0x800000025314AA90;
  type metadata accessor for HomesStore.CoreData.Configuration.StoreType(0);
  swift_storeEnumTagMultiPayload();
  *(v0 + 16) = _s11HomeKitCore10HomesStoreC0C4DataO19PersistentContainerC13configurationAgE13ConfigurationV_tcfC_0(v5);
  return v0;
}

uint64_t sub_2530CDF70()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_2530CE030;

  return sub_2530CEB88(sub_2530CEB88, sub_2530CEFE4, 0);
}

uint64_t sub_2530CE030()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_2530CE15C;
  }

  else
  {
    v3 = sub_2530CE144;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_2530CE174(void *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for HMCDHomeModel();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  sub_2531444C0();
  type metadata accessor for HMCDAccessoryModel();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  sub_2531444C0();
  type metadata accessor for HMCDRoomModel();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  sub_2531444C0();
  [v4 setHome_];
  [v4 setRoom_];
  type metadata accessor for HMCDHomesTopologyModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata entityName];
  if (!v7)
  {
    sub_253148B64();
    v7 = sub_253148B54();
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  v9 = sub_253149154();
  if (v1)
  {

    goto LABEL_17;
  }

  if (v9 >> 62)
  {
    if (sub_2531492E4())
    {
      goto LABEL_7;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x259BFD000](0, v9);
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v10 = *(v9 + 32);
    }

    v11 = v10;

    goto LABEL_13;
  }

  v11 = [objc_allocWithZone(ObjCClassFromMetadata) initWithContext_];
LABEL_13:
  v12 = v11;
  [v12 addHomesObject_];
  sub_2531444C0();

  v16[0] = 0;
  if ([a1 save_])
  {
    v13 = v16[0];
  }

  else
  {
    v14 = v16[0];
    sub_253148844();

    swift_willThrow();
  }

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2530CE438(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a2;
  v8 = *a3;
  v7[8] = *v6;
  v7[9] = v8;
  return MEMORY[0x2822009F8](sub_2530CE48C, 0, 0);
}

uint64_t sub_2530CE48C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_allocObject();
  v0[10] = v7;
  v7[2] = v4;
  v7[3] = v5;
  v7[4] = v1;
  v7[5] = v6;
  v7[6] = v3;
  v7[7] = v2;

  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_2530CE59C;
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[2];

  return sub_2530CE8A8(v11, sub_2530CF000, v7, v9);
}

uint64_t sub_2530CE59C()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2530CE6D8, 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2530CE6D8()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_2530CE73C(void *a1, uint64_t a2, char a3, void (*a4)(void *))
{
  v5 = a4;
  v6 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v7 = *(a2 + 16);
  if (v7)
  {
    v10 = a3 & 1;
    v11 = (a2 + 40);
    while (1)
    {
      v12 = *(v11 - 1);
      v13 = *v11;

      if ((a3 & 2) != 0)
      {

        v14 = sub_2530CF668(v12, v13, a1);
      }

      else
      {
        v14 = 0;
      }

      v19[0] = v12;
      v19[1] = v13;
      v19[2] = 0;
      v20 = v10;
      v21 = v14;
      sub_2530E0500(v19);
      if (v4)
      {
        break;
      }

      sub_2530DAC80(v15);

      v11 += 2;
      if (!--v7)
      {
        v6 = v22;
        v5 = a4;
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v16 = sub_253145238(v6);

    v5(v16);
  }
}

uint64_t sub_2530CE8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_2530CE8D0, 0, 0);
}

uint64_t sub_2530CE8D0()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  v4 = *(v0[7] + 16);
  v0[8] = v4;
  v0[2] = v4;
  v5 = swift_allocObject();
  v0[9] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;

  v6 = swift_task_alloc();
  v0[10] = v6;
  v7 = type metadata accessor for HomesStore.CoreData.PersistentContainer();
  v8 = sub_2530CF610();
  *v6 = v0;
  v6[1] = sub_2530CE9F8;
  v9 = v0[6];
  v10 = v0[3];

  return sub_25311E60C(v10, sub_2530CF5E4, v5, v7, v9, v8);
}

uint64_t sub_2530CE9F8()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2530CEB70, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_2530CEB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_253149144();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530CEC4C, 0, 0);
}

uint64_t sub_2530CEC4C()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = *(v4 + 32);
  v8 = swift_allocObject();
  v0[9] = v8;
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v4;
  v9 = *MEMORY[0x277CBE110];
  v10 = *(v2 + 104);

  v10(v1, v9, v3);
  v11 = *(MEMORY[0x277CBE118] + 4);
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_2530CED98;
  v13 = v0[8];
  v14 = v0[2];
  v15 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28210EE50](v14, v13, sub_2530CF9B8, v8, v15);
}

uint64_t sub_2530CED98()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    (*(v3[7] + 8))(v3[8], v3[6]);

    return MEMORY[0x2822009F8](sub_2530CEF20, 0, 0);
  }

  else
  {
    v5 = v3[8];
    v4 = v3[9];
    v6 = v3[6];
    v7 = v3[7];

    (*(v7 + 8))(v5, v6);

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_2530CEF20()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t HomesStore.CoreData.CLIController.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t HomesStore.CoreData.CLIController.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2530CF000(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  return sub_2530CE73C(a1, *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

unint64_t sub_2530CF028()
{
  result = qword_27F5808E0;
  if (!qword_27F5808E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5808E0);
  }

  return result;
}

unint64_t sub_2530CF080()
{
  result = qword_27F5808E8;
  if (!qword_27F5808E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5808E8);
  }

  return result;
}

unint64_t sub_2530CF0D8()
{
  result = qword_27F5808F0;
  if (!qword_27F5808F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5808F0);
  }

  return result;
}

unint64_t sub_2530CF130()
{
  result = qword_27F5808F8;
  if (!qword_27F5808F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5808F8);
  }

  return result;
}

unint64_t sub_2530CF188()
{
  result = qword_27F580900;
  if (!qword_27F580900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580900);
  }

  return result;
}

uint64_t dispatch thunk of HomesStore.CoreData.CLIController.saveRandomModels()()
{
  v2 = *(*v0 + 96);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2530BF218;

  return v6();
}

uint64_t dispatch thunk of HomesStore.CoreData.CLIController.withManagedObjects<A>(matchingEntityNames:options:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 104);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_2530CD684;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t _s13CLIControllerC5ErrorOwet(unsigned int *a1, int a2)
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

_WORD *_s13CLIControllerC5ErrorOwst(_WORD *result, int a2, int a3)
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

uint64_t _s13CLIControllerC7OptionsVwet(uint64_t a1, int a2)
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

uint64_t _s13CLIControllerC7OptionsVwst(uint64_t result, int a2, int a3)
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

uint64_t sub_2530CF5E4(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return v2(*a1);
}

unint64_t sub_2530CF610()
{
  result = qword_27F580908;
  if (!qword_27F580908)
  {
    type metadata accessor for HomesStore.CoreData.PersistentContainer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580908);
  }

  return result;
}

uint64_t sub_2530CF668(uint64_t a1, uint64_t a2, id a3)
{
  v5 = [a3 persistentStoreCoordinator];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [v5 managedObjectModel];

  v8 = [v7 entitiesByName];
  sub_2530CF970(0, &qword_27F580910, 0x277CBE408);
  v9 = sub_253148AD4();

  if (!*(v9 + 16) || (v10 = sub_25311D908(a1, a2), (v11 & 1) == 0))
  {

    return 0;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  v13 = [v12 relationshipsByName];
  sub_2530CF970(0, &qword_27F580918, 0x277CBE500);
  v14 = sub_253148AD4();

  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v20;
    if (!v17)
    {
      break;
    }

LABEL_11:
    v23 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v24 = v23 | (v20 << 6);
    v25 = *(*(v14 + 48) + 16 * v24 + 8);
    v26 = *(*(v14 + 56) + 8 * v24);

    v27 = v26;
    if ([v27 isToMany])
    {
      v33 = [v27 name];
      v28 = sub_253148B64();
      v34 = v29;
      v35 = v28;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2530F459C(0, *(v21 + 16) + 1, 1, v21);
        v21 = result;
      }

      v31 = *(v21 + 16);
      v30 = *(v21 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_2530F459C((v30 > 1), v31 + 1, 1, v21);
        v21 = result;
      }

      *(v21 + 16) = v31 + 1;
      v32 = v21 + 16 * v31;
      *(v32 + 32) = v35;
      *(v32 + 40) = v34;
    }

    else
    {
    }
  }

  while (1)
  {
    v20 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v20 >= v18)
    {

      return v21;
    }

    v17 = *(v14 + 64 + 8 * v20);
    ++v22;
    if (v17)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2530CF970(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_2530CF9B8()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = *(v0[4] + 32);
  v3 = v4;
  v2(&v4);
}

uint64_t HomesStoreComposableModelDataSourceError.hashValue.getter()
{
  sub_253149814();
  MEMORY[0x259BFD420](0);
  return sub_253149844();
}

unint64_t sub_2530CFAAC()
{
  result = qword_27F580920;
  if (!qword_27F580920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580920);
  }

  return result;
}

uint64_t dispatch thunk of HomesStoreComposableModelDataSource.fetchModels<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 32))();
}

{
  return (*(a5 + 40))();
}

{
  return (*(a5 + 48))();
}

uint64_t dispatch thunk of HomesStoreComposableModelDataSource.fetchModels<A>(_:where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 56))();
}

{
  return (*(a6 + 64))();
}

{
  return (*(a6 + 72))();
}

uint64_t dispatch thunk of HomesStoreComposableModelDataSource.fetchModels<A, B>(_:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 80))();
}

{
  return (*(a7 + 88))();
}

{
  return (*(a7 + 96))();
}

uint64_t dispatch thunk of HomesStoreComposableModelDataSource.fetchModels<A, B>(_:as:where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return (*(a8 + 104))();
}

{
  return (*(a8 + 112))();
}

{
  return (*(a8 + 120))();
}

uint64_t HomesStore.ModelType.metaType.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (*v0 > 5u)
    {
      if (v1 == 6)
      {
        v2 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice();
        v3 = &qword_27F5806F0;
        v4 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice;
      }

      else
      {
        v2 = type metadata accessor for HomesStore.User.SharedSettings();
        v3 = &unk_27F5806E8;
        v4 = type metadata accessor for HomesStore.User.SharedSettings;
      }
    }

    else if (v1 == 4)
    {
      v2 = type metadata accessor for HomesStore.User();
      v3 = &qword_27F580700;
      v4 = type metadata accessor for HomesStore.User;
    }

    else
    {
      v2 = type metadata accessor for HomesStore.Zone();
      v3 = &unk_27F5806F8;
      v4 = type metadata accessor for HomesStore.Zone;
    }
  }

  else if (*v0 > 1u)
  {
    if (v1 == 2)
    {
      v2 = type metadata accessor for HomesStore.Home();
      v3 = &unk_27F580710;
      v4 = type metadata accessor for HomesStore.Home;
    }

    else
    {
      v2 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
      v3 = &unk_27F580708;
      v4 = type metadata accessor for HomesStore.HomesRelationshipModel;
    }
  }

  else if (*v0)
  {
    v2 = type metadata accessor for HomesStore.Room();
    v3 = &qword_27F580718;
    v4 = type metadata accessor for HomesStore.Room;
  }

  else
  {
    v2 = type metadata accessor for HomesStore.Accessory();
    v3 = &qword_27F580720;
    v4 = type metadata accessor for HomesStore.Accessory;
  }

  sub_2530D06D0(v3, v4);
  return v2;
}

unint64_t HomesStore.ModelType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 8;
  if (result < 8)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t HomesStore.ModelType.description.getter()
{
  v1 = *v0;
  v2 = 0x726F737365636341;
  v3 = 0xD000000000000012;
  if (v1 == 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 1919251285;
  if (v1 != 4)
  {
    v4 = 1701736282;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000016;
  if (v1 == 2)
  {
    v5 = 1701670728;
  }

  if (*v0)
  {
    v2 = 1836019538;
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

unint64_t sub_2530D0110()
{
  result = qword_27F580928;
  if (!qword_27F580928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580928);
  }

  return result;
}

unint64_t sub_2530D0168()
{
  result = qword_27F580930;
  if (!qword_27F580930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F580938, &qword_25314CC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580930);
  }

  return result;
}

unint64_t sub_2530D01CC()
{
  v1 = *v0;
  v2 = 0x726F737365636341;
  v3 = 0xD000000000000012;
  if (v1 == 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 1919251285;
  if (v1 != 4)
  {
    v4 = 1701736282;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000016;
  if (v1 == 2)
  {
    v5 = 1701670728;
  }

  if (*v0)
  {
    v2 = 1836019538;
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

uint64_t _s9ModelTypeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s9ModelTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2530D0400()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (*v0 > 5u)
    {
      if (v1 == 6)
      {
        v2 = type metadata accessor for HMCDAppleMediaDeviceModel();
        sub_2530D06D0(&qword_27F580948, type metadata accessor for HMCDAppleMediaDeviceModel);
      }

      else
      {
        v2 = type metadata accessor for HMCDUserSharedSettingsModel();
        sub_2530D06D0(&qword_27F580940, type metadata accessor for HMCDUserSharedSettingsModel);
      }
    }

    else if (v1 == 4)
    {
      v2 = type metadata accessor for HMCDUserModel();
      sub_2530D06D0(&qword_27F580958, type metadata accessor for HMCDUserModel);
    }

    else
    {
      v2 = type metadata accessor for HMCDZoneModel();
      sub_2530D06D0(&qword_27F580950, type metadata accessor for HMCDZoneModel);
    }
  }

  else if (*v0 > 1u)
  {
    if (v1 == 2)
    {
      v2 = type metadata accessor for HMCDHomeModel();
      sub_2530D06D0(&qword_27F580968, type metadata accessor for HMCDHomeModel);
    }

    else
    {
      v2 = type metadata accessor for HMCDHomesTopologyModel();
      sub_2530D06D0(&qword_27F580960, type metadata accessor for HMCDHomesTopologyModel);
    }
  }

  else if (*v0)
  {
    v2 = type metadata accessor for HMCDRoomModel();
    sub_2530D06D0(&qword_27F580970, type metadata accessor for HMCDRoomModel);
  }

  else
  {
    v2 = type metadata accessor for HMCDAccessoryModel();
    sub_2530D06D0(&qword_27F580978, type metadata accessor for HMCDAccessoryModel);
  }

  return v2;
}

uint64_t sub_2530D06D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2530D0718()
{
  result = qword_27F580980;
  if (!qword_27F580980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580980);
  }

  return result;
}

void sub_2530D077C(id *a1)
{
  v1 = [*a1 modelID];
  sub_253148924();
}

id sub_2530D07DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 user];
  *a2 = result;
  return result;
}

id HMCDUserSharedSettingsModel.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id HMCDUserSharedSettingsModel.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HMCDUserSharedSettingsModel();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id HMCDUserSharedSettingsModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMCDUserSharedSettingsModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2530D09B4()
{
  v1 = [v0 modelID];
  sub_253148924();
}

uint64_t sub_2530D0A14(uint64_t a1)
{
  v2 = v1;
  v4 = sub_253148904();
  [v2 setModelID_];

  v5 = sub_253148944();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*sub_2530D0AA4(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2530D0B5C(v2);
  return sub_2530D0B14;
}

void sub_2530D0B14(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_2530D0B5C(void *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_253148944();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    v5[4] = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v10 = malloc(v9);
    v5[4] = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  v5[5] = v11;
  v13 = [v1 modelID];
  sub_253148924();

  (*(v8 + 32))(v12, v10, v6);
  return sub_2530D0CD8;
}

void sub_2530D0CD8(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    v6[2]((*a1)[3], v4, v7);
    v9 = sub_253148904();
    v10 = v6[1];
    (v10)(v5, v7);
    [v8 setModelID_];

    (v10)(v4, v7);
  }

  else
  {
    v11 = (*a1)[5];
    v12 = sub_253148904();
    [v8 setModelID_];

    (v6[1])(v4, v7);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

unint64_t sub_2530D0E20(uint64_t a1)
{
  result = sub_2530D0E48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2530D0E48()
{
  result = qword_27F580988;
  if (!qword_27F580988)
  {
    type metadata accessor for HMCDUserSharedSettingsModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580988);
  }

  return result;
}

uint64_t sub_2530D0EA8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for HMCDUserSharedSettingsModel();
  result = sub_2531493E4();
  *a1 = result;
  return result;
}

void sub_2530D0F48(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  v4 = sub_253148B64();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_2530D0FA0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 rooms];
  type metadata accessor for HMCDRoomModel();
  sub_2530D1554(&qword_27F580998, 255, type metadata accessor for HMCDRoomModel);
  v4 = sub_253148F74();

  *a2 = v4;
}

void sub_2530D1044(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for HMCDRoomModel();
  sub_2530D1554(&qword_27F580998, 255, type metadata accessor for HMCDRoomModel);
  v4 = sub_253148F64();
  [v3 setRooms_];
}

id HMCDZoneModel.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id HMCDZoneModel.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HMCDZoneModel();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id HMCDZoneModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMCDZoneModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_2530D1288(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2530D12F8(v2);
  return sub_2530D0B14;
}

void (*sub_2530D12F8(void *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_253148944();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    v5[4] = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v10 = malloc(v9);
    v5[4] = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  v5[5] = v11;
  v13 = [v1 modelID];
  sub_253148924();

  (*(v8 + 32))(v12, v10, v6);
  return sub_2530D0CD8;
}

uint64_t sub_2530D1498(uint64_t a1, uint64_t a2)
{
  result = sub_2530D1554(&qword_27F580990, a2, type metadata accessor for HMCDZoneModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2530D14F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for HMCDZoneModel();
  result = sub_2531493E4();
  *a1 = result;
  return result;
}

uint64_t sub_2530D1554(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2530D159C()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F5809A0);
  __swift_project_value_buffer(v0, qword_27F5809A0);
  return sub_253148A84();
}

void sub_2530D1620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580A18, "؍");
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v53 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v51 = v48 - v6;
  v7 = type metadata accessor for HomesStore.CoreData.Configuration(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = 0x746C7561666544;
  v11[1] = 0xE700000000000000;
  v52 = *(v8 + 28);
  sub_25311A4D8();
  v12 = (v11 + *(v8 + 32));
  *v12 = 0xD00000000000001ELL;
  v12[1] = 0x800000025314AA90;
  type metadata accessor for HomesStore.CoreData.Configuration.StoreType(0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580A20, "؍");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25314CE10;
  v14 = *MEMORY[0x277CBE338];
  *(inited + 32) = sub_253148B64();
  *(inited + 40) = v15;
  v16 = MEMORY[0x277D839B0];
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v17 = *MEMORY[0x277CBE210];
  *(inited + 80) = sub_253148B64();
  *(inited + 88) = v18;
  *(inited + 120) = v16;
  *(inited + 96) = 1;
  v19 = *MEMORY[0x277CBE328];
  *(inited + 128) = sub_253148B64();
  *(inited + 136) = v20;
  *(inited + 168) = v16;
  *(inited + 144) = 1;
  v21 = *MEMORY[0x277CBE330];
  *(inited + 176) = sub_253148B64();
  *(inited + 184) = v22;
  v55 = MEMORY[0x277D84F90];
  sub_2530F4DF0(0, 1, 0);
  v23 = v55;
  v25 = *(v55 + 16);
  v24 = *(v55 + 24);
  if (v25 >= v24 >> 1)
  {
    sub_2530F4DF0((v24 > 1), v25 + 1, 1);
    v23 = v55;
  }

  *(v23 + 16) = v25 + 1;
  v26 = v23 + 16 * v25;
  *(v26 + 32) = 0xD000000000000019;
  *(v26 + 40) = 0x800000025314A530;
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580A28, &qword_25314CE50);
  *(inited + 192) = v23;
  v27 = *MEMORY[0x277CBE340];
  *(inited + 224) = sub_253148B64();
  *(inited + 232) = v28;
  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 240) = 0xD00000000000001ELL;
  *(inited + 248) = 0x800000025314AA90;
  v29 = sub_253109E70(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580A30, &unk_25314F200);
  swift_arrayDestroy();
  v30 = sub_253148884();
  v31 = *(v30 - 8);
  v32 = *(v31 + 16);
  v33 = v51;
  v49 = a1;
  v32(v51, a1, v30);
  v34 = *(v31 + 56);
  v34(v33, 0, 1, v30);
  v54 = v11;
  v35 = v52 + v11;
  v36 = v53;
  v32(v53, v35, v30);
  v37 = v33;
  v38 = v36;
  v34(v36, 0, 1, v30);
  v48[1] = v29;
  sub_2530D1B78(v29);
  v52 = [objc_allocWithZone(_s14descr2864E9699O21RequestHandlingPolicyCMa()) init];
  v39 = *(v31 + 48);
  v40 = 0;
  if (v39(v37, 1, v30) != 1)
  {
    v40 = sub_253148864();
    (*(v31 + 8))(v37, v30);
  }

  if (v39(v38, 1, v30) == 1)
  {
    v41 = 0;
  }

  else
  {
    v41 = sub_253148864();
    (*(v31 + 8))(v38, v30);
  }

  v42 = v54;
  v43 = objc_allocWithZone(MEMORY[0x277CBE510]);
  v44 = sub_253148AC4();

  v45 = v43;
  v46 = v52;
  v47 = [v45 initForStoreWithURL:v40 usingModelAtURL:v41 options:v44 policy:v52];

  if (v47)
  {

    (*(v31 + 8))(v49, v30);
    sub_2530D20A8(v42);
    *(v50 + 16) = v47;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2530D1B78(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F580A38, &qword_25314CE58);
    v2 = sub_2531495D4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2530C0304(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_2530C02F4(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2530C02F4(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2530C02F4(v32, v33);
    v17 = *(v2 + 40);
    result = sub_253149344();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
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
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_2530C02F4(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}