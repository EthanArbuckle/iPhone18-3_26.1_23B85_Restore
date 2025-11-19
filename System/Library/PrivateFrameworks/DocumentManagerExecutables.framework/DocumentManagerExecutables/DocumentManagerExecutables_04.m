uint64_t sub_249406A84@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_249406AE0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_249406B48@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_249406BA4(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_249406C18()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249406C7C()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_249406CBC()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249406D90@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t sub_249406DEC(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x60);

  return v2(v3);
}

uint64_t sub_249406F04@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_249406FBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables9DOCButton_hoverEffectsAllowedIfInteractionDisabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_249407094@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_2494070F0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x80);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_249407160()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2494071C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249407204()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249407278()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

id sub_2494072C0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 action_isEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_249407308@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t sub_249407364(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x98);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_2494073C8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t sub_249407424(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xB0);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_249407498@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___DOCActionManager_actionManagerDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2494074F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR___DOCActionManager_actionManagerDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_249407558()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249407598()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2494075D0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940762C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249407664()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940769C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_24940778C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24940782C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249407874()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2494078AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2494078E4()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24940796C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2494079F0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249407A38()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249407B5C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

uint64_t sub_249407BB8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xD0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_249407C20@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t sub_249407C7C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xF0);

  return v2(v3);
}

uint64_t sub_249407CE8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x118))();
  *a2 = result;
  return result;
}

uint64_t sub_249407D4C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x120);

  return v2(v3);
}

uint64_t sub_249407DB8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x130))();
  *a2 = result;
  return result;
}

uint64_t sub_249407E1C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x138);

  return v2(v3);
}

uint64_t sub_249407E88@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x148))();
  *a2 = result;
  return result;
}

uint64_t sub_249407EEC(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x150);

  return v2(v3);
}

uint64_t sub_249407F58@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x160))();
  *a2 = result;
  return result;
}

uint64_t sub_24940801C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x178))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2494080E4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x190))();
  *a2 = result;
  return result;
}

uint64_t sub_2494081A8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1B8))();
  *a2 = result;
  return result;
}

uint64_t sub_249408218@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1D0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2494082E0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t sub_24940833C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xB8);

  return v2(v3);
}

uint64_t sub_2494083A0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

uint64_t sub_2494083FC(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xD0);

  return v2(v3);
}

uint64_t sub_249408460@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

uint64_t sub_2494084BC(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xE8);

  return v2(v3);
}

uint64_t sub_249408520@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF8))();
  *a2 = result;
  return result;
}

uint64_t sub_24940857C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x100);

  return v2(v3);
}

uint64_t sub_2494085E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x128))();
  *a2 = result;
  return result;
}

uint64_t sub_24940864C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x130);

  return v2(v3);
}

uint64_t sub_2494086B8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x148))();
  *a2 = result;
  return result;
}

uint64_t sub_249408728@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x160))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2494087F0()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249408828()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249408864()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940889C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2494088D4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t sub_249408930(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xB8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2494089A0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

uint64_t sub_249408A54@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF8))();
  *a2 = result;
  return result;
}

uint64_t sub_249408AB0(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x100);

  return v2(v3);
}

uint64_t sub_249408B1C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_249408B78(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x80);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_249408BE0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249408C18()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249408C58()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_249408CB0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249408CE8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_249408D30()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249408D84()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249408DBC()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_249408E0C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

double sub_249408E54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 160))(v7);
  v3 = v11;
  *(a2 + 64) = v10;
  *(a2 + 80) = v3;
  *(a2 + 96) = v12;
  *(a2 + 112) = v13;
  v4 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v4;
  result = *&v8;
  v6 = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_249408EDC(__int128 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v21 = a1[1];
  v4 = v21;
  v22 = v3;
  v27 = *(a1 + 112);
  v5 = a1[4];
  v6 = a1[6];
  v25 = a1[5];
  v7 = v25;
  v26 = v6;
  v8 = a1[2];
  v9 = a1[4];
  v23 = a1[3];
  v10 = v23;
  v24 = v9;
  v20 = *a1;
  v11 = *a2;
  v12 = *(*a2 + 16);
  v13 = *(*a2 + 32);
  v14 = *(*a2 + 64);
  v28[2] = *(*a2 + 48);
  v28[3] = v14;
  v28[0] = v12;
  v28[1] = v13;
  v15 = *(v11 + 80);
  v16 = *(v11 + 112);
  v28[5] = *(v11 + 96);
  v28[6] = v16;
  v28[4] = v15;
  v29 = *(v11 + 128);
  *(v11 + 48) = v8;
  *(v11 + 64) = v10;
  *(v11 + 16) = v2;
  *(v11 + 32) = v4;
  v17 = a1[6];
  *(v11 + 128) = *(a1 + 112);
  *(v11 + 96) = v7;
  *(v11 + 112) = v17;
  *(v11 + 80) = v5;
  outlined init with copy of DOCItemCollectionLayoutTraits.GridTraits(&v20, v19);
  return outlined destroy of CharacterSet?(v28, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC04GridG0VSgMd);
}

double sub_249408FA4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 184))(v9);
  v3 = v17;
  a2[8] = v16;
  a2[9] = v3;
  a2[10] = v18[0];
  *(a2 + 169) = *(v18 + 9);
  v4 = v13;
  a2[4] = v12;
  a2[5] = v4;
  v5 = v15;
  a2[6] = v14;
  a2[7] = v5;
  v6 = v9[1];
  *a2 = v9[0];
  a2[1] = v6;
  result = *&v10;
  v8 = v11;
  a2[2] = v10;
  a2[3] = v8;
  return result;
}

__n128 sub_249409034@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 208))(v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

__n128 sub_2494090A8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 392) = *(a1 + 64);
  v3 = *(a1 + 48);
  *(v2 + 360) = *(a1 + 32);
  *(v2 + 376) = v3;
  result = *(a1 + 16);
  *(v2 + 328) = *a1;
  *(v2 + 344) = result;
  *(v2 + 400) = 0;
  return result;
}

double sub_2494090DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 232))(&v5);
  result = v5;
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_249409140(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 408) = *result;
  *(v3 + 416) = v2;
  return result;
}

double sub_249409158@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 256))(v8);
  v3 = v12;
  a2[4] = v11;
  a2[5] = v3;
  v4 = v14;
  a2[6] = v13;
  a2[7] = v4;
  v5 = v8[1];
  *a2 = v8[0];
  a2[1] = v5;
  result = *&v9;
  v7 = v10;
  a2[2] = v9;
  a2[3] = v7;
  return result;
}

id sub_2494091E0()
{

  return specialized DOCNode.fpfs_syncFetchFPItem()();
}

uint64_t sub_24940923C()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249409274()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2494092AC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_249409308(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_24940936C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_249409430@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x100))();
  *a2 = result;
  return result;
}

uint64_t sub_2494094FC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_249409558(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x88);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_2494095C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2494095FC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249409658()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249409690()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2494096C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249409700@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_24940975C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x68);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2494097C4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_24940987C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2494098CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_24940991C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_24940996C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2494099BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_249409A14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_249409A6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_249409AC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_249409B1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 392))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_249409B74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 416))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_249409BCC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t sub_249409C2C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_249409C74@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isItemPinned];
  *a2 = result;
  return result;
}

uint64_t sub_249409CA8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249409CE8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249409D20()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249409D60()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_249409D98()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249409DD0()
{

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 40);
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_249409E2C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_249409E74()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_249409EC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940A1C8()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24940A2A4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result & 1;
  return result;
}

id sub_24940A35C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 usingVariableBlurBottomBar];
  *a2 = result;
  return result;
}

uint64_t sub_24940A3A4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27EEF2D70;
  *a1 = static UITraitCollection.DOCTabBarBlurAvoidanceTrait.name;
  a1[1] = v2;
}

double sub_24940A3F8@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  result = *&static UITraitCollection.DOCTabBarBlurAvoidanceTrait.defaultValue;
  *a1 = static UITraitCollection.DOCTabBarBlurAvoidanceTrait.defaultValue;
  return result;
}

uint64_t sub_24940A444(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static UITraitCollection.DOCTabBarBlurAvoidanceTrait.defaultValue = v1;
  return result;
}

uint64_t sub_24940A494@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_24940A4C0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_24940A4EC@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_24940A58C@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_24940A608@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static MoveItemsIntent.openAppWhenRun;
  return result;
}

uint64_t sub_24940A654(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static MoveItemsIntent.openAppWhenRun = v1;
  return result;
}

uint64_t sub_24940A768@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_24940A798@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_24940A7E4(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 112);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_24940A83C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_24940A888(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 136);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_24940A8E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_24940A978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

uint64_t sub_24940AA34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_24940AAEC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24940AB44()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940AB7C()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940ABB4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24940ABFC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24940AC4C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24940ACA4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940ACDC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940AD14()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24940AD78()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24940ADD0()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24940AE20()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940AE68()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940AEA0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940AED8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_24940AF24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(**a2 + 160);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_24940AF88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  return result;
}

uint64_t sub_24940AFD4(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 248);

  return v2(v3);
}

uint64_t sub_24940B028@<X0>(uint64_t *a1@<X8>)
{
  result = NSProgress.fileDisplayName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24940B080()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940B0B8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_24940B170@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_24940B228@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_24940B2E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_24940B344(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xE8);

  return v4(v2, v3);
}

uint64_t sub_24940B3BC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_24940B418(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x100);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_24940B494@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x138))();
  *a2 = result;
  return result;
}

uint64_t sub_24940B564@<X0>(uint64_t *a1@<X8>)
{
  result = DOCViewDecorator<>.delegate.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24940B5E4@<X0>(uint64_t *a1@<X8>)
{
  result = DOCViewDecorator<>.copyableText.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24940B65C@<X0>(_BYTE *a1@<X8>)
{
  result = DOCViewDecorator<>.supportsCopy.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24940B6C0@<X0>(_BYTE *a1@<X8>)
{
  result = DOCViewDecorator<>.behaveAsLink.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_24940B794(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_24940B7A0()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940B7D8()
{

  outlined consume of DOCSidebarItem(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  swift_unknownObjectRelease();
  v1 = *(v0 + 128);
  if (v1 != 255)
  {
    outlined consume of DOCSidebarItem(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 129, 7);
}

uint64_t sub_24940B848()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940B880()
{
  v1 = *(v0 + 56);
  if (v1 != 255)
  {
    outlined consume of DOCSidebarItem(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_24940B8CC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24940B924()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24940B96C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24940B9BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940B9F4()
{

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_24940BA5C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940BA9C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24940BAF4()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24940BB54()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940BB8C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    outlined consume of DOCSidebarItem(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_24940BBF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940BC44()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940BC84()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940BD14()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940BD4C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_24940BE40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940BE78@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_24940BED4(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x88);

  return v2(v3);
}

uint64_t sub_24940BF38@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t sub_24940BF94(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xA0);

  return v2(v3);
}

uint64_t sub_24940C018()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940C050()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940C090()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940C0E0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24940C124()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24940C1EC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24940C234()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24940C284()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24940C2CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940C304()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24940C34C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24940C38C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24940C3CC()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24940C424()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24940C5B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940C5F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_isInPopoverMode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24940C65C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940C69C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_24940C6F8(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_24940C76C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940C7A4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24940C7DC()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24940C824()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940C85C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940C894()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24940C8D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24940C914()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVs5Error_pGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24940C9A8()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24940C9FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24940CA74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(**a1 + 88))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCBackdropConfiguration) -> ();
  a2[1] = result;
  return result;
}

uint64_t sub_24940CAFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940CB34()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940CB8C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24940CBE8()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24940CC30()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24940CD14()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24940CD5C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24940CDB4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24940CE94()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940CF08()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24940CF5C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24940CFA4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940CFE0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940D018()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940D058()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24940D098()
{
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_24940D0F4()
{
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_24940D15C()
{
  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 40);
  }

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_24940D1C4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24940D20C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940D2A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940D2D8()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940D310()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940D350()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940D388@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x98))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_24940D3E4(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xA0);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_24940D458@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_24940D4B4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xD8);

  return v4(v2, v3);
}

uint64_t sub_24940D538()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940D570()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24940D5B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940D5E8()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24940D648()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24940D6A0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24940D6EC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24940D73C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940D78C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24940D7EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24940D844()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24940D88C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24940D8DC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24940D9D8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_24940DAEC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940DB24()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940DB5C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24940DC48()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24940DD14()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24940DDFC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_24940DF80@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_24940DFDC(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x68);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_24940E040@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_24940E09C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x80);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_24940E100()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940E158()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24940E200()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940E238()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940E278()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940E2D4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t sub_24940E330(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xF0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_24940E398@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x100))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_24940E460@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x130))();
  *a2 = result;
  return result;
}

uint64_t sub_24940E4C4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x138);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_24940E534@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x158))();
  *a2 = result;
  return result;
}

uint64_t sub_24940E5A4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x188))();
  *a2 = result;
  return result;
}

uint64_t sub_24940E608(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x190);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_24940E674@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1A0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_24940E6D8(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x1A8);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_24940E754@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1B8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_24940E81C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1D8))();
  *a2 = result;
  return result;
}

uint64_t sub_24940E880(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x1E0);

  return v2(v3);
}

uint64_t sub_24940E8EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1F0))();
  *a2 = result;
  return result;
}

uint64_t sub_24940E950(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x1F8);

  return v2(v3);
}

uint64_t sub_24940E9BC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x208))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_24940EA84@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x238))();
  *a2 = result;
  return result;
}

uint64_t sub_24940EAE8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x240);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_24940EB60()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940EB98()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940EBD0()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940EC08()
{

  v1 = *(v0 + 48);
  if (v1 >= 5)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24940EC60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940ECA0()
{
  v1 = *(v0 + 24);
  if (v1 >= 5)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24940ED20@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_24940ED7C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x88);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_24940EDE4@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_24940EE10()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940EE58@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_24940EED0@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_24940EF6C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static CompressItemsIntent.openAppWhenRun;
  return result;
}

uint64_t sub_24940EFB8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static CompressItemsIntent.openAppWhenRun = v1;
  return result;
}

uint64_t sub_24940F0CC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_24940F0F8@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance UIMenuElementAttributes@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t outlined init with take of DOCGoToFolderCandidate(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void outlined consume of DOCProgressCollectionIndicatorView??(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t outlined consume of Set<UIPress>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_24940F520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24940FFBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2494113D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2494116DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id DOCLogHandle()
{
  v0 = MEMORY[0x277D062B8];
  v1 = *MEMORY[0x277D062B8];
  if (!*MEMORY[0x277D062B8])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

DOCTagCheckableDotView *dotViewForColor(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(DOCTagCheckableDotView);
  [(DOCTagCheckableDotView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(DOCTagCheckableDotView *)v4 setTagColor:a1];
  [(DOCTagCheckableDotView *)v4 setChecked:a2];

  return v4;
}

uint64_t DOCSpotlightGPSInfoFromCGImagePropertyDictionary(void *a1, uint64_t a2, double *a3)
{
  v5 = a1;
  v6 = v5;
  if (!a3)
  {
    DOCSpotlightGPSInfoFromCGImagePropertyDictionary_cold_2();
LABEL_17:
    a2 = 0;
    goto LABEL_18;
  }

  if (!a2)
  {
    DOCSpotlightGPSInfoFromCGImagePropertyDictionary_cold_1();
    goto LABEL_18;
  }

  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD3258]];

  if (!v7)
  {
    goto LABEL_17;
  }

  v12 = 0.0;
  value = 0;
  valuePtr = 0.0;
  if (!CFDictionaryGetValueIfPresent(v7, *MEMORY[0x277CD3278], &value))
  {
    goto LABEL_17;
  }

  CFNumberGetValue(value, kCFNumberDoubleType, &valuePtr);
  if (CFDictionaryGetValueIfPresent(v7, *MEMORY[0x277CD3280], &value) && CFStringCompare(value, @"S", 1uLL) == kCFCompareEqualTo && valuePtr > 0.0)
  {
    valuePtr = -valuePtr;
  }

  if (!CFDictionaryGetValueIfPresent(v7, *MEMORY[0x277CD3288], &value))
  {
    goto LABEL_17;
  }

  CFNumberGetValue(value, kCFNumberDoubleType, &v12);
  if (CFDictionaryGetValueIfPresent(v7, *MEMORY[0x277CD3290], &value))
  {
    v8 = CFStringCompare(value, @"W", 1uLL);
    v9 = v12;
    if (v8 == kCFCompareEqualTo && v12 > 0.0)
    {
      v9 = -v12;
      v12 = -v12;
    }
  }

  else
  {
    v9 = v12;
  }

  *a3 = v9;
  *a2 = valuePtr;
  a2 = 1;
LABEL_18:

  return a2;
}

id _DOCDisplayStringForLatLongValue(int a1, double a2)
{
  v4 = _DocumentManagerBundle();
  v5 = v4;
  if (a1)
  {
    if (a2 < 0.0)
    {
      v6 = @"Metadata GPSLatLon Component [South]";
      v7 = @"S";
    }

    else
    {
      v6 = @"Metadata GPSLatLon Component [North]";
      v7 = @"N";
    }
  }

  else if (a2 < 0.0)
  {
    v6 = @"Metadata GPSLatLon Component [West]";
    v7 = @"W";
  }

  else
  {
    v6 = @"Metadata GPSLatLon Component [East]";
    v7 = @"E";
  }

  v8 = [v4 localizedStringForKey:v6 value:v7 table:@"Localizable"];

  v9 = -a2;
  if (a2 >= 0.0)
  {
    v9 = a2;
  }

  v10 = v9;
  v11 = (v9 - v9) * 60.0;
  v12 = v11;
  v13 = (((v11 - v11) * 60.0 * 1000.0) + 0.5) / 1000.0;
  if (v13 == 60.0)
  {
    v14 = v12 + 1;
  }

  else
  {
    v14 = v12;
  }

  if (v13 == 60.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v13;
  }

  v16 = v12 == 59 && v13 == 60.0;
  v17 = (v16 + v10);
  v18 = _DocumentManagerBundle();
  v19 = [v18 localizedStringForKey:@"Metadata GPSLatLon Format" value:@"%1$d° %2$d′ %3$.3f″ %4$@" table:@"Localizable"];

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:v19, v17, v14, *&v15, v8];

  return v20;
}

id DOCLocalizedMetadataStringForWidthByHeight(double a1, double a2)
{
  v4 = _DocumentManagerBundle();
  v5 = [v4 localizedStringForKey:@"%1$d × %2$d" value:@"%1$d × %2$d" table:@"Localizable"];

  v6 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v5, a1, a2];

  return v6;
}

id DOCLocalizedMetadataStringInMMSSForDuration(double a1)
{
  v2 = objc_opt_new();
  [v2 setUnitsStyle:0];
  [v2 setAllowedUnits:192];
  [v2 setZeroFormattingBehavior:0x10000];
  v3 = [v2 stringFromTimeInterval:a1];

  return v3;
}

id DOCLocalizedMetadataStringForExposureProgramNumber(void *a1)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v21[0] = &unk_285CE9DD8;
    v20 = _DocumentManagerBundle();
    v19 = [v20 localizedStringForKey:@"Exposure Program [Manual]" value:@"Manual" table:@"Localizable"];
    v22[0] = v19;
    v21[1] = &unk_285CE9DF0;
    v18 = _DocumentManagerBundle();
    v17 = [v18 localizedStringForKey:@"Exposure Program [Normal]" value:@"Normal" table:@"Localizable"];
    v22[1] = v17;
    v21[2] = &unk_285CE9E08;
    v16 = _DocumentManagerBundle();
    v15 = [v16 localizedStringForKey:@"Exposure Program [AperturePriority]" value:@"Aperture priority" table:@"Localizable"];
    v22[2] = v15;
    v21[3] = &unk_285CE9E20;
    v14 = _DocumentManagerBundle();
    v13 = [v14 localizedStringForKey:@"Exposure Program [ShutterPriority]" value:@"Shutter priority" table:@"Localizable"];
    v22[3] = v13;
    v21[4] = &unk_285CE9E38;
    v2 = _DocumentManagerBundle();
    v3 = [v2 localizedStringForKey:@"Exposure Program [Creative]" value:@"Creative" table:@"Localizable"];
    v22[4] = v3;
    v21[5] = &unk_285CE9E50;
    v4 = _DocumentManagerBundle();
    v5 = [v4 localizedStringForKey:@"Exposure Program [Action]" value:@"Action" table:@"Localizable"];
    v22[5] = v5;
    v21[6] = &unk_285CE9E68;
    v6 = _DocumentManagerBundle();
    v7 = [v6 localizedStringForKey:@"Exposure Program [Portrait]" value:@"Portrait" table:@"Localizable"];
    v22[6] = v7;
    v21[7] = &unk_285CE9E80;
    v8 = _DocumentManagerBundle();
    v9 = [v8 localizedStringForKey:@"Exposure Program [Landscape]" value:@"Landscape" table:@"Localizable"];
    v22[7] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:8];

    v11 = [v10 objectForKeyedSubscript:v1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id DOCLocalizedMetadataStringForMeteringModeNumber(void *a1)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v21[0] = &unk_285CE9E98;
    v20 = _DocumentManagerBundle();
    v19 = [v20 localizedStringForKey:@"Metering Mode [Unknown]" value:@"Unknown" table:@"Localizable"];
    v22[0] = v19;
    v21[1] = &unk_285CE9DD8;
    v18 = _DocumentManagerBundle();
    v17 = [v18 localizedStringForKey:@"Metering Mode [Average]" value:@"Average" table:@"Localizable"];
    v22[1] = v17;
    v21[2] = &unk_285CE9DF0;
    v16 = _DocumentManagerBundle();
    v15 = [v16 localizedStringForKey:@"Metering Mode [CenterWeightedAverage]" value:@"Center-weighted average" table:@"Localizable"];
    v22[2] = v15;
    v21[3] = &unk_285CE9E08;
    v14 = _DocumentManagerBundle();
    v13 = [v14 localizedStringForKey:@"Metering Mode [Spot]" value:@"Spot" table:@"Localizable"];
    v22[3] = v13;
    v21[4] = &unk_285CE9E20;
    v2 = _DocumentManagerBundle();
    v3 = [v2 localizedStringForKey:@"Metering Mode [MultiSpot]" value:@"Multi-spot" table:@"Localizable"];
    v22[4] = v3;
    v21[5] = &unk_285CE9E38;
    v4 = _DocumentManagerBundle();
    v5 = [v4 localizedStringForKey:@"Metering Mode [Pattern]" value:@"Pattern" table:@"Localizable"];
    v22[5] = v5;
    v21[6] = &unk_285CE9E50;
    v6 = _DocumentManagerBundle();
    v7 = [v6 localizedStringForKey:@"Metering Mode [Partial]" value:@"Partial" table:@"Localizable"];
    v22[6] = v7;
    v21[7] = &unk_285CE9EB0;
    v8 = _DocumentManagerBundle();
    v9 = [v8 localizedStringForKey:@"Metering Mode [Other]" value:@"Other" table:@"Localizable"];
    v22[7] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:8];

    v11 = [v10 objectForKeyedSubscript:v1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id DOCLocalizedMetadataStringForWhiteBalanceModeNumber(void *a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9[0] = &unk_285CE9E98;
    v2 = _DocumentManagerBundle();
    v3 = [v2 localizedStringForKey:@"WhiteBalance Mode [Auto]" value:@"Auto" table:@"Localizable"];
    v9[1] = &unk_285CE9DD8;
    v10[0] = v3;
    v4 = _DocumentManagerBundle();
    v5 = [v4 localizedStringForKey:@"WhiteBalance Mode [Manual]" value:@"Manual" table:@"Localizable"];
    v10[1] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

    v7 = [v6 objectForKeyedSubscript:v1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id DOCLocalizedMetadataYesNoStringForBool(int a1)
{
  v2 = _DocumentManagerBundle();
  v3 = v2;
  if (a1)
  {
    v4 = @"Metadata Boolean Value [YES]";
    v5 = @"YES";
  }

  else
  {
    v4 = @"Metadata Boolean Value [NO]";
    v5 = @"NO";
  }

  v6 = [v2 localizedStringForKey:v4 value:v5 table:@"Localizable"];

  return v6;
}

void sub_249418458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_24941BA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _itemCollectionViewControllerIn(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v1 contentViewController];
      v2 = _itemCollectionViewControllerIn();
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

id DOCProgressIconForUTType(void *a1, double a2, double a3, double a4)
{
  v7 = [a1 identifier];
  v8 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithType:v7];
  v9 = DOCProgressIconForISIcon(v8, a2, a3, a4);

  if (!v9)
  {
    v9 = DOCProgressIconForGenericDocument(a2, a3, a4);
  }

  return v9;
}

id DOCProgressIconForISIcon(void *a1, double a2, double a3, double a4)
{
  v7 = MEMORY[0x277D1B1C8];
  v8 = a1;
  v9 = [[v7 alloc] initWithSize:a2 scale:{a3, a4}];
  [v9 setDrawBorder:1];
  v10 = UIImageForISIconWithDescriptor(v8, v9);

  return v10;
}

id DOCProgressIconForGenericDocument(double a1, double a2, double a3)
{
  v6 = [MEMORY[0x277D1B1A8] genericDocumentIcon];
  v7 = DOCProgressIconForISIcon(v6, a1, a2, a3);

  return v7;
}

id DOCOpenWithAppMenuIconForBundleIdentifier(void *a1)
{
  v1 = MEMORY[0x277D1B1A8];
  v2 = a1;
  v3 = [[v1 alloc] initWithBundleIdentifier:v2];

  v4 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B240]];
  v5 = UIImageForISIconWithDescriptor(v3, v4);

  return v5;
}

id UIImageForISIconWithDescriptor(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 imageForDescriptor:v4];
  if ([v5 placeholder])
  {
    v6 = [v3 prepareImageForDescriptor:v4];

    v5 = v6;
  }

  if (v5)
  {
    v7 = [MEMORY[0x277D755B8] imageWithCGImage:{objc_msgSend(v5, "CGImage")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_249430774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_249432F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_249433544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_249433878(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_249433BA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_249433E80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_249439B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t DOCCreateDSNSHelperContext()
{
  v0 = objc_alloc(MEMORY[0x277D046A8]);

  return [v0 initWithOptions:0 delegate:0];
}

double DOCDefaultTagDimension()
{
  v0 = +[DOCTagAppearance pickerList];
  [v0 dotSize];
  v2 = v1;

  v3 = +[DOCTagRenderer shared];
  if ([v3 differentiateWithShapes])
  {
    v2 = v2 + 6.0;
  }

  return v2;
}

void sub_24943C294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id location)
{
  objc_destroyWeak((v51 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t NSMutableAttributedString.init(doc_string:prefixedWith:font:baselineOffset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v15 = MEMORY[0x24C1FAD20](a1, a2);
  v16 = [v14 initWithString_];

  v17 = objc_opt_self();
  v18 = v16;
  v19 = MEMORY[0x24C1FAD20](a3, a4);
  v20 = [v17 _systemImageNamed_withConfiguration_];

  if (v20)
  {

    if ((a7 & 1) == 0)
    {
      v21 = [v20 imageWithBaselineOffsetFromBottom_];

      v20 = v21;
    }

    v22 = [objc_opt_self() textAttachmentWithImage_];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSMutableAttributedString);
    v23 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v25 = MEMORY[0x24C1FAD20](32, 0xE100000000000000);
    v26 = [v24 initWithString_];

    [v18 insertAttributedString:v26 atIndex:0];
    [v18 insertAttributedString:v23 atIndex:0];
    v27 = *MEMORY[0x277D740A8];
    v28 = a5;
    [v18 addAttribute:v27 value:v28 range:{0, objc_msgSend(v18, sel_length)}];

    return v18;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t default argument 1 of DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D74AB0];
  v3 = type metadata accessor for UICellAccessory.LayoutDimension();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

id default argument 2 of DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:)()
{
  v0 = [objc_opt_self() defaultPermission];

  return v0;
}

id default argument 0 of static UIDocumentBrowserAction.deleteAction(title:)()
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v1 = result;
    v6._object = 0x8000000249BC6550;
    v2._countAndFlagsBits = 0x4E206574656C6544;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v2._object = 0xEA0000000000776FLL;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    v6._countAndFlagsBits = 0xD000000000000044;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v6)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t default argument 0 of FINodeEntityQuery.init(supportedContentTypes:shouldExcludeTrashedItems:)(void (*a1)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_249B9A480;
  a1();
  return v2;
}

id default argument 2 of DOCMoveOperation.init(items:destinationFolder:undoManager:)()
{
  v0 = [objc_opt_self() shared];

  return v0;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UILayoutPriority(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x24C1FB460](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UILayoutPriority(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x24C1FB470](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t protocol witness for Error._domain.getter in conformance related decl e for NSFileProviderErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for NSFileProviderErrorCode and conformance related decl 'e' for NSFileProviderErrorCode, type metadata accessor for related decl 'e' for NSFileProviderErrorCode);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance related decl e for NSFileProviderErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for NSFileProviderErrorCode and conformance related decl 'e' for NSFileProviderErrorCode, type metadata accessor for related decl 'e' for NSFileProviderErrorCode);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for Error._getEmbeddedNSError() in conformance related decl e for NSFileProviderErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for NSFileProviderErrorCode and conformance related decl 'e' for NSFileProviderErrorCode, type metadata accessor for related decl 'e' for NSFileProviderErrorCode);

  return MEMORY[0x28211CA68](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Property()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Property()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UIFontWeight(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x24C1F8260](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UIFontWeight(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x24C1F8270](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCTab()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCTab()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Error._domain.getter in conformance related decl e for UIDocumentBrowserErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for UIDocumentBrowserErrorCode and conformance related decl 'e' for UIDocumentBrowserErrorCode, type metadata accessor for related decl 'e' for UIDocumentBrowserErrorCode);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance related decl e for UIDocumentBrowserErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for UIDocumentBrowserErrorCode and conformance related decl 'e' for UIDocumentBrowserErrorCode, type metadata accessor for related decl 'e' for UIDocumentBrowserErrorCode);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for Error._getEmbeddedNSError() in conformance related decl e for UIDocumentBrowserErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for UIDocumentBrowserErrorCode and conformance related decl 'e' for UIDocumentBrowserErrorCode, type metadata accessor for related decl 'e' for UIDocumentBrowserErrorCode);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t protocol witness for Error._domain.getter in conformance related decl e for CSSearchQueryErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for CSSearchQueryErrorCode and conformance related decl 'e' for CSSearchQueryErrorCode, type metadata accessor for related decl 'e' for CSSearchQueryErrorCode);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance related decl e for CSSearchQueryErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for CSSearchQueryErrorCode and conformance related decl 'e' for CSSearchQueryErrorCode, type metadata accessor for related decl 'e' for CSSearchQueryErrorCode);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for Error._getEmbeddedNSError() in conformance related decl e for CSSearchQueryErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for CSSearchQueryErrorCode and conformance related decl 'e' for CSSearchQueryErrorCode, type metadata accessor for related decl 'e' for CSSearchQueryErrorCode);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSAttributedStringKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x24C1FAD20](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance related decl e for NSFileProviderErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for NSFileProviderErrorCode and conformance related decl 'e' for NSFileProviderErrorCode, type metadata accessor for related decl 'e' for NSFileProviderErrorCode);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance related decl e for NSFileProviderErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for NSFileProviderErrorCode and conformance related decl 'e' for NSFileProviderErrorCode, type metadata accessor for related decl 'e' for NSFileProviderErrorCode);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t protocol witness for _ObjectiveCBridgeableError.init(_bridgedNSError:) in conformance related decl e for NSFileProviderErrorCode(void *a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for NSFileProviderErrorCode and conformance related decl 'e' for NSFileProviderErrorCode, type metadata accessor for related decl 'e' for NSFileProviderErrorCode);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance related decl e for NSFileProviderErrorCode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for NSFileProviderErrorCode and conformance related decl 'e' for NSFileProviderErrorCode, type metadata accessor for related decl 'e' for NSFileProviderErrorCode);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance DOCDocumentSourceIdentifier()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type DOCDocumentSourceIdentifier and conformance DOCDocumentSourceIdentifier, type metadata accessor for DOCDocumentSourceIdentifier);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type DOCDocumentSourceIdentifier and conformance DOCDocumentSourceIdentifier, type metadata accessor for DOCDocumentSourceIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance related decl e for UIDocumentBrowserErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for UIDocumentBrowserErrorCode and conformance related decl 'e' for UIDocumentBrowserErrorCode, type metadata accessor for related decl 'e' for UIDocumentBrowserErrorCode);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance related decl e for UIDocumentBrowserErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for UIDocumentBrowserErrorCode and conformance related decl 'e' for UIDocumentBrowserErrorCode, type metadata accessor for related decl 'e' for UIDocumentBrowserErrorCode);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t protocol witness for _ObjectiveCBridgeableError.init(_bridgedNSError:) in conformance related decl e for UIDocumentBrowserErrorCode(void *a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for UIDocumentBrowserErrorCode and conformance related decl 'e' for UIDocumentBrowserErrorCode, type metadata accessor for related decl 'e' for UIDocumentBrowserErrorCode);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance related decl e for UIDocumentBrowserErrorCode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for UIDocumentBrowserErrorCode and conformance related decl 'e' for UIDocumentBrowserErrorCode, type metadata accessor for related decl 'e' for UIDocumentBrowserErrorCode);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance related decl e for CSSearchQueryErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for CSSearchQueryErrorCode and conformance related decl 'e' for CSSearchQueryErrorCode, type metadata accessor for related decl 'e' for CSSearchQueryErrorCode);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance related decl e for CSSearchQueryErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for CSSearchQueryErrorCode and conformance related decl 'e' for CSSearchQueryErrorCode, type metadata accessor for related decl 'e' for CSSearchQueryErrorCode);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t protocol witness for _ObjectiveCBridgeableError.init(_bridgedNSError:) in conformance related decl e for CSSearchQueryErrorCode(void *a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for CSSearchQueryErrorCode and conformance related decl 'e' for CSSearchQueryErrorCode, type metadata accessor for related decl 'e' for CSSearchQueryErrorCode);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance related decl e for CSSearchQueryErrorCode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for CSSearchQueryErrorCode and conformance related decl 'e' for CSSearchQueryErrorCode, type metadata accessor for related decl 'e' for CSSearchQueryErrorCode);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance related decl e for NSFileProviderErrorCode()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLResourceKey()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIContentSizeCategory()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIContentSizeCategory and conformance UIContentSizeCategory, type metadata accessor for UIContentSizeCategory);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIContentSizeCategory and conformance UIContentSizeCategory, type metadata accessor for UIContentSizeCategory);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontTextStyle()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIFontTextStyle and conformance UIFontTextStyle, type metadata accessor for UIFontTextStyle);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIFontTextStyle and conformance UIFontTextStyle, type metadata accessor for UIFontTextStyle);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance FPProviderDomainID()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type FPProviderDomainID and conformance FPProviderDomainID, type metadata accessor for FPProviderDomainID);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type FPProviderDomainID and conformance FPProviderDomainID, type metadata accessor for FPProviderDomainID);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSNotificationName()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSNotificationName and conformance NSNotificationName, type metadata accessor for NSNotificationName);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSNotificationName and conformance NSNotificationName, type metadata accessor for NSNotificationName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSFileProviderItemIdentifier()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSFileProviderItemIdentifier and conformance NSFileProviderItemIdentifier, type metadata accessor for NSFileProviderItemIdentifier);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSFileProviderItemIdentifier and conformance NSFileProviderItemIdentifier, type metadata accessor for NSFileProviderItemIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance FPProviderID()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type FPProviderID and conformance FPProviderID, type metadata accessor for FPProviderID);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type FPProviderID and conformance FPProviderID, type metadata accessor for FPProviderID);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSFileProviderSearchFilter()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSFileProviderSearchFilter and conformance NSFileProviderSearchFilter, type metadata accessor for NSFileProviderSearchFilter);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSFileProviderSearchFilter and conformance NSFileProviderSearchFilter, type metadata accessor for NSFileProviderSearchFilter);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance DOCSpotlightEnumeratedItemIdentifier()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type DOCSpotlightEnumeratedItemIdentifier and conformance DOCSpotlightEnumeratedItemIdentifier, type metadata accessor for DOCSpotlightEnumeratedItemIdentifier);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type DOCSpotlightEnumeratedItemIdentifier and conformance DOCSpotlightEnumeratedItemIdentifier, type metadata accessor for DOCSpotlightEnumeratedItemIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSFileProviderDomainIdentifier()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSFileProviderDomainIdentifier and conformance NSFileProviderDomainIdentifier, type metadata accessor for NSFileProviderDomainIdentifier);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSFileProviderDomainIdentifier and conformance NSFileProviderDomainIdentifier, type metadata accessor for NSFileProviderDomainIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance related decl e for NSFileProviderErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for NSFileProviderErrorCode and conformance related decl 'e' for NSFileProviderErrorCode, type metadata accessor for related decl 'e' for NSFileProviderErrorCode);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

float protocol witness for RawRepresentable.rawValue.getter in conformance UILayoutPriority@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UILayoutPriority()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance CAGradientLayerType()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CAGradientLayerType and conformance CAGradientLayerType, type metadata accessor for CAGradientLayerType);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CAGradientLayerType and conformance CAGradientLayerType, type metadata accessor for CAGradientLayerType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance FPAction()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIActivityType()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIActivityType and conformance UIActivityType, type metadata accessor for UIActivityType);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIActivityType and conformance UIActivityType, type metadata accessor for UIActivityType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSProgressFileOperationKind()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSProgressFileOperationKind and conformance NSProgressFileOperationKind, type metadata accessor for NSProgressFileOperationKind);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSProgressFileOperationKind and conformance NSProgressFileOperationKind, type metadata accessor for NSProgressFileOperationKind);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSProgressUserInfoKey()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSProgressUserInfoKey and conformance NSProgressUserInfoKey, type metadata accessor for NSProgressUserInfoKey);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSProgressUserInfoKey and conformance NSProgressUserInfoKey, type metadata accessor for NSProgressUserInfoKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorAttributeName()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorTraitKey()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIFontDescriptorTraitKey and conformance UIFontDescriptorTraitKey, type metadata accessor for UIFontDescriptorTraitKey);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIFontDescriptorTraitKey and conformance UIFontDescriptorTraitKey, type metadata accessor for UIFontDescriptorTraitKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

double protocol witness for RawRepresentable.rawValue.getter in conformance UIFontWeight@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontWeight()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIFontWeight and conformance UIFontWeight, type metadata accessor for UIFontWeight);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIFontWeight and conformance UIFontWeight, type metadata accessor for UIFontWeight);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIDocumentCreationIntent()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIDocumentCreationIntent and conformance UIDocumentCreationIntent, type metadata accessor for UIDocumentCreationIntent);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIDocumentCreationIntent and conformance UIDocumentCreationIntent, type metadata accessor for UIDocumentCreationIntent);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance related decl e for UIDocumentBrowserErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for UIDocumentBrowserErrorCode and conformance related decl 'e' for UIDocumentBrowserErrorCode, type metadata accessor for related decl 'e' for UIDocumentBrowserErrorCode);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance related decl e for CSSearchQueryErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type related decl 'e' for CSSearchQueryErrorCode and conformance related decl 'e' for CSSearchQueryErrorCode, type metadata accessor for related decl 'e' for CSSearchQueryErrorCode);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorFeatureKey()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIFontDescriptorFeatureKey and conformance UIFontDescriptorFeatureKey, type metadata accessor for UIFontDescriptorFeatureKey);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIFontDescriptorFeatureKey and conformance UIFontDescriptorFeatureKey, type metadata accessor for UIFontDescriptorFeatureKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance DOCTagRegistryChangeKey()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type DOCTagRegistryChangeKey and conformance DOCTagRegistryChangeKey, type metadata accessor for DOCTagRegistryChangeKey);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type DOCTagRegistryChangeKey and conformance DOCTagRegistryChangeKey, type metadata accessor for DOCTagRegistryChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSKeyValueChangeKey()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSFileProviderServiceName()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSFileProviderServiceName and conformance NSFileProviderServiceName, type metadata accessor for NSFileProviderServiceName);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSFileProviderServiceName and conformance NSFileProviderServiceName, type metadata accessor for NSFileProviderServiceName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance PDFDocumentWriteOption()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type PDFDocumentWriteOption and conformance PDFDocumentWriteOption, type metadata accessor for PDFDocumentWriteOption);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type PDFDocumentWriteOption and conformance PDFDocumentWriteOption, type metadata accessor for PDFDocumentWriteOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance DOCIntentLocationType()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type DOCIntentLocationType and conformance DOCIntentLocationType, type metadata accessor for DOCIntentLocationType);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type DOCIntentLocationType and conformance DOCIntentLocationType, type metadata accessor for DOCIntentLocationType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DOCDocumentSourceIdentifier@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x24C1FAD20](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AVFileType()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type AVFileType and conformance AVFileType, type metadata accessor for AVFileType);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type AVFileType and conformance AVFileType, type metadata accessor for AVFileType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void protocol witness for Hashable.hash(into:) in conformance UILayoutPriority()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UIFontWeight()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x24C1FCC00](*&v1);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance FPProviderDomainID()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x24C1FAF70](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FPProviderDomainID()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FPProviderDomainID()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
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

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CMTime(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CMTime(uint64_t result, int a2, int a3)
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

uint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t base witness table accessor for Equatable in Permissions()
{
  return lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type Permissions and conformance Permissions, type metadata accessor for Permissions);
}

{
  return _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type Permissions and conformance Permissions, type metadata accessor for Permissions);
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
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

void type metadata accessor for UIPopoverArrowDirection(uint64_t a1, unint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

uint64_t static DOCGridLayout.layout(for:spec:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = a1[5];
  v59[4] = a1[4];
  v60 = v5;
  v61 = a1[6];
  v6 = a1[1];
  v59[0] = *a1;
  v59[1] = v6;
  v7 = a1[2];
  v59[3] = a1[3];
  v59[2] = v7;
  v8 = a2[1];
  v66 = *a2;
  *v67 = v8;
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[6];
  v70 = a2[5];
  v71 = v11;
  v12 = a2[4];
  v68 = v10;
  v69 = v12;
  *&v67[16] = v9;
  v13 = v66;
  if (v66)
  {
    v14 = *&v67[8];
    v16 = *(&v66 + 1);
    v15 = *v67;
    v17 = v67[24];
    v18 = v67[25];
    v19 = v67[26];
    v20 = a2[4];
    v62 = a2[3];
    v63 = v20;
    v21 = a2[5];
    v22 = a2[6];
  }

  else
  {
    v23 = a1[5];
    __src[4] = a1[4];
    __src[5] = v23;
    __src[6] = a1[6];
    v24 = a1[1];
    __src[0] = *a1;
    __src[1] = v24;
    v25 = a1[2];
    __src[3] = a1[3];
    __src[2] = v25;
    DOCGridLayout.Environment.preferredSystemLayoutMetrics.getter(v50);
    v26 = a1[5];
    v51[4] = a1[4];
    v51[5] = v26;
    v51[6] = a1[6];
    v27 = a1[1];
    v51[0] = *a1;
    v51[1] = v27;
    v28 = a1[2];
    v51[3] = a1[3];
    v51[2] = v28;
    static DOCGridLayout.Spec.preferredSystemSpec(for:layoutMetrics:)(v51, v50, __src);
    v16 = *(&__src[0] + 1);
    v13 = *&__src[0];
    v15 = *&__src[1];
    v14 = *(&__src[1] + 8);
    v17 = BYTE8(__src[2]);
    v18 = BYTE9(__src[2]);
    v19 = BYTE10(__src[2]);
    v62 = __src[3];
    v63 = __src[4];
    v21 = __src[5];
    v22 = __src[6];
  }

  v64 = v21;
  v65 = v22;
  *&v53 = v13;
  *(&v53 + 1) = v16;
  *v54 = v15;
  *&v54[8] = v14;
  v54[24] = v17 & 1;
  v54[25] = v18 & 1;
  v54[26] = v19 & 1;
  v55 = v62;
  v56 = v63;
  v57 = v21;
  v58 = v22;
  outlined init with copy of DOCGridLayout.Spec?(&v66, __src, &_s26DocumentManagerExecutables13DOCGridLayoutV4SpecVSgMd);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v29 = a1[5];
  v51[4] = a1[4];
  v51[5] = v29;
  v51[6] = a1[6];
  v30 = a1[1];
  v51[0] = *a1;
  v51[1] = v30;
  v31 = a1[2];
  v51[3] = a1[3];
  v51[2] = v31;
  v50[4] = v56;
  v50[5] = v57;
  v50[6] = v58;
  v50[0] = v53;
  v50[1] = *v54;
  v50[3] = v55;
  v50[2] = *&v54[16];

  DOCGridLayout.LayoutCalculator.__layout(for:spec:canUseCache:)(v51, v50, 1, __src);
  v32 = *v59;
  v33 = a1[5];
  v51[4] = a1[4];
  v51[5] = v33;
  v51[6] = a1[6];
  v34 = a1[1];
  v51[0] = *a1;
  v51[1] = v34;
  v35 = a1[2];
  v51[3] = a1[3];
  v51[2] = v35;
  if (v32 < DOCGridLayout.Environment.thresholdForAllowingMoreThanOneColumn.getter())
  {
    if (*(&__src[14] + 1) < 1)
    {
      v36 = 1;
LABEL_11:
      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v47, __src, sizeof(v47));
      outlined init with copy of DOCGridLayout.LayoutCalculator.CalculationResults(__dst, v51);
      DOCGridLayout.LayoutCalculator.__layoutByAdjusting(_:toFitColumns:in:canUseCache:silent:)(v47, v36);
      outlined destroy of DOCGridLayout.Spec(&v53);

      memcpy(v49, v47, sizeof(v49));
      outlined destroy of DOCGridLayout.LayoutCalculator.CalculationResults(v49);
      memcpy(v50, __src, 0x1F8uLL);
      outlined destroy of DOCGridLayout.LayoutCalculator.CalculationResults(v50);
      memcpy(__src, v51, 0x1F8uLL);
LABEL_13:
      v50[10] = __src[17];
      v50[11] = __src[18];
      v50[12] = __src[19];
      v50[13] = __src[20];
      v50[6] = __src[13];
      v50[7] = __src[14];
      v50[8] = __src[15];
      v50[9] = __src[16];
      v50[2] = __src[9];
      v50[3] = __src[10];
      v50[4] = __src[11];
      v50[5] = __src[12];
      v50[0] = __src[7];
      v50[1] = __src[8];
      memcpy(v51, __src, 0x1F8uLL);
      outlined init with copy of DOCGridLayout(v50, v49);
      result = outlined destroy of DOCGridLayout.LayoutCalculator.CalculationResults(v51);
      v40 = v50[11];
      a3[10] = v50[10];
      a3[11] = v40;
      v41 = v50[13];
      a3[12] = v50[12];
      a3[13] = v41;
      v42 = v50[7];
      a3[6] = v50[6];
      a3[7] = v42;
      v43 = v50[9];
      a3[8] = v50[8];
      a3[9] = v43;
      v44 = v50[3];
      a3[2] = v50[2];
      a3[3] = v44;
      v45 = v50[5];
      a3[4] = v50[4];
      a3[5] = v45;
      v46 = v50[1];
      *a3 = v50[0];
      a3[1] = v46;
      return result;
    }

LABEL_12:
    outlined destroy of DOCGridLayout.Spec(&v53);

    goto LABEL_13;
  }

  v37 = qword_249B9FE38[SBYTE8(v60)];
  result = minColumnsIfRegularSizeSetting #1 () in DOCGridLayout.Environment.preferredMinColumns.getter(v59, v32);
  v39 = __OFADD__(result, v37);
  v36 = result + v37;
  if (!v39)
  {
    if (*(&__src[14] + 1) < v36)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

double DOCGridLayout.layoutHeight(for:gridItemLayoutTraits:)(char *a1, _OWORD *a2)
{
  if (one-time initialization token for default != -1)
  {
    v18 = a2;
    swift_once();
    a2 = v18;
  }

  v4 = v2[11];
  v21[10] = v2[10];
  v21[11] = v4;
  v5 = v2[13];
  v21[12] = v2[12];
  v21[13] = v5;
  v6 = v2[7];
  v21[6] = v2[6];
  v21[7] = v6;
  v7 = v2[9];
  v21[8] = v2[8];
  v21[9] = v7;
  v8 = v2[3];
  v21[2] = v2[2];
  v21[3] = v8;
  v9 = v2[5];
  v21[4] = v2[4];
  v21[5] = v9;
  v10 = v2[1];
  v21[0] = *v2;
  v21[1] = v10;
  v11 = a2[9];
  v19[8] = a2[8];
  v19[9] = v11;
  v20[0] = a2[10];
  *(v20 + 9) = *(a2 + 169);
  v12 = a2[5];
  v19[4] = a2[4];
  v19[5] = v12;
  v13 = a2[7];
  v19[6] = a2[6];
  v19[7] = v13;
  v14 = a2[1];
  v19[0] = *a2;
  v19[1] = v14;
  v15 = a2[3];
  v19[2] = a2[2];
  v19[3] = v15;

  v16 = DOCGridLayout.LayoutCalculator.computeCellHeight(forComputedLayout:traitCollection:gridItemLayoutTraits:)(v21, a1, v19);

  return v16;
}

uint64_t DOCGridLayout.spec.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v13 = v1[4];
  v2 = v13;
  v14 = v3;
  v15 = v1[6];
  v4 = v15;
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  v6 = v1[3];
  v11 = v1[2];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return outlined init with copy of DOCGridLayout.Spec(v10, &v9);
}

void DOCGridLayout.gridInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[16] = a1;
  v4[17] = a2;
  v4[18] = a3;
  v4[19] = a4;
}

void DOCGridLayout.peekedTrailingLayout.setter(double a1, double a2, double a3)
{
  v3[25] = a1;
  v3[26] = a2;
  v3[27] = a3;
}

BOOL static DOCPeekedTrailingGridLayout.== infix(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a1 == a4;
  if (a2 != a5)
  {
    v6 = 0;
  }

  return a3 == a6 && v6;
}

_OWORD *DOCGridLayout.init(spec:specIconWidth:numberOfColumns:gridInsets:gridItemSpacing:cellWidth:cellContentMargins:titleLayoutWidth:peekedTrailingLayout:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>, double a11@<D7>, __int128 a12, __int128 a13, uint64_t a14)
{
  v14 = result[5];
  *(a3 + 64) = result[4];
  *(a3 + 80) = v14;
  *(a3 + 96) = result[6];
  v15 = result[1];
  *a3 = *result;
  *(a3 + 16) = v15;
  v16 = result[3];
  *(a3 + 32) = result[2];
  *(a3 + 48) = v16;
  *(a3 + 112) = a4;
  *(a3 + 120) = a2;
  *(a3 + 128) = a5;
  *(a3 + 136) = a6;
  *(a3 + 144) = a7;
  *(a3 + 152) = a8;
  *(a3 + 160) = a9;
  *(a3 + 168) = a10;
  *(a3 + 176) = a11;
  *(a3 + 184) = a12;
  *(a3 + 200) = a13;
  *(a3 + 216) = a14;
  return result;
}

void DOCGridLayout.startOfTrailingEdgeOverlapItemIgnoringSafeArea.getter()
{
  if (__OFSUB__(*(v0 + 120), 1))
  {
    __break(1u);
  }
}

uint64_t static DOCGridLayout.minWidthRequiredToDisplay(numberOfColumns:includeEdgeInsets:itemSpacing:traits:)(uint64_t a1, int a2, int a3, int a4, id a5)
{
  v18 = *(MEMORY[0x277D768C8] + 16);
  v19 = *MEMORY[0x277D768C8];
  v7 = [a5 userInterfaceIdiom];
  [a5 displayScale];
  v9 = v8;
  v10 = a5;
  DOCGridSpecTextSize.init(_:)(v10);
  v11 = [v10 preferredContentSizeCategory];
  if (UIContentSizeCategory.isAccessibilityCategory.getter())
  {
    v12 = static UIContentSizeCategory.> infix(_:_:)();

    if (v12)
    {
      v13 = 2;
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

  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  UITraitCollection.subscript.getter();
  v14 = [objc_opt_self() defaultMetrics];
  [v14 scaledValueForValue:v10 compatibleWithTraitCollection:1.0];
  v16 = v15;

  v21[1] = v19;
  v21[2] = v18;
  v22 = 2;
  v23 = v7;
  v24 = v9;
  v25 = v31;
  v26 = v13;
  v27 = v31;
  v28 = BYTE8(v31);
  v29 = v32;
  v30 = v16;
  v21[0] = vdupq_n_s64(0x43E0000000000000uLL);
  memset(v20, 0, sizeof(v20));
  static DOCGridLayout.layout(for:spec:)(v21, v20, &v31);
  result = outlined destroy of DOCGridLayout(&v31);
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
  }

  return result;
}

void *DOCGridLayout.LayoutCalculator.__layout(for:spec:canUseCache:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[8];
  v15 = a2[3];
  v16 = a2[5];
  v168 = a2[4];
  v169 = v16;
  v17 = a2[5];
  v170 = a2[6];
  v18 = a2[1];
  v164 = *a2;
  v165 = v18;
  v19 = a2[2];
  v21 = *a2;
  v20 = a2[1];
  v167 = a2[3];
  v166 = v19;
  v175 = v168;
  v176 = v17;
  v177 = a2[6];
  v171 = v21;
  v172 = v20;
  v174 = v15;
  v173 = v19;
  v140 = v20;
  v139 = v21;
  v141 = v19;
  v142 = v15;
  v143 = v168;
  v144 = v17;
  v145 = v177;
  *&v146 = v8;
  *(&v146 + 1) = v9;
  *&v147 = v10;
  *(&v147 + 1) = v11;
  *&v148 = v12;
  *(&v148 + 1) = v13;
  v149 = v14;
  _s26DocumentManagerExecutables13DOCGridLayoutVSgWOi0_(&v178);
  if ((a3 & 1) == 0)
  {
    v27 = a2[5];
    v115 = a2[4];
    v116 = v27;
    v117 = a2[6];
    v28 = a2[1];
    v111 = *a2;
    v112 = v28;
    v29 = a2[2];
    v114 = a2[3];
    v113 = v29;
    v133 = v186;
    v134 = v187;
    v131 = v184;
    v132 = v185;
    v137 = v190;
    v138 = v191;
    v135 = v188;
    v136 = v189;
    v126 = v179;
    v125 = v178;
    v130 = v183;
    v129 = v182;
    v128 = v181;
    v118 = v8;
    v119 = v9;
    v120 = v10;
    v121 = v11;
    v122 = v12;
    v123 = v13;
    v124 = v14;
    v127 = v180;
    outlined init with copy of DOCGridLayout.Spec(&v164, &v97);
    goto LABEL_7;
  }

  v22 = outlined init with copy of DOCGridLayout.Spec(&v164, &v111);
  if (one-time initialization token for isCachingDisabled != -1)
  {
    v22 = swift_once();
  }

  if (isCachingDisabled)
  {
    v24 = a2[5];
    v115 = a2[4];
    v116 = v24;
    v117 = a2[6];
    v25 = a2[1];
    v111 = *a2;
    v112 = v25;
    v26 = a2[2];
    v114 = a2[3];
    v113 = v26;
    v133 = v186;
    v134 = v187;
    v131 = v184;
    v132 = v185;
    v137 = v190;
    v138 = v191;
    v135 = v188;
    v136 = v189;
    v126 = v179;
    v125 = v178;
    v130 = v183;
    v129 = v182;
    v128 = v181;
    v118 = v8;
    v119 = v9;
    v120 = v10;
    v121 = v11;
    v122 = v12;
    v123 = v13;
    v124 = v14;
    v127 = v180;
LABEL_7:
    outlined init with copy of DOCGridLayout.Spec?(&v111, &v97, &_s26DocumentManagerExecutables13DOCGridLayoutV0E10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesV011calculationN0_ACSg6layouttMd);
    outlined destroy of DOCGridLayout.LayoutCalculator.CalculationVariables(&v139);
    v160 = v188;
    v161 = v189;
    v162 = v190;
    v163 = v191;
    v156 = v184;
    v157 = v185;
    v158 = v186;
    v159 = v187;
    v152 = v180;
    v153 = v181;
    v154 = v182;
    v155 = v183;
    v150 = v178;
    v151 = v179;
    goto LABEL_8;
  }

  v67 = v4;
  v32 = *(v4 + 24);
  MEMORY[0x28223BE20](v22, v23);
  v65 = &v139;
  v33 = *(*v32 + 160);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables13DOCGridLayoutVSgMd);
  v33(&v97, closure #1 in DOCGridLayout.LayoutCalculator._cachedLayout(for:spec:canUseCache:)partial apply, &v64, v34);
  v78 = v107;
  v79 = v108;
  v80 = v109;
  v81 = v110;
  v74 = v103;
  v75 = v104;
  v76 = v105;
  v77 = v106;
  v70 = v99;
  v71 = v100;
  v72 = v101;
  v73 = v102;
  v68 = v97;
  v69 = v98;
  v35 = a2[5];
  v115 = a2[4];
  v116 = v35;
  v117 = a2[6];
  v36 = a2[1];
  v111 = *a2;
  v112 = v36;
  v37 = a2[2];
  v114 = a2[3];
  v113 = v37;
  v133 = v105;
  v134 = v106;
  v131 = v103;
  v132 = v104;
  v137 = v109;
  v138 = v110;
  v135 = v107;
  v136 = v108;
  v126 = v98;
  v125 = v97;
  v130 = v102;
  v129 = v101;
  v128 = v100;
  v118 = v8;
  v119 = v9;
  v120 = v10;
  v121 = v11;
  v122 = v12;
  v123 = v13;
  v124 = v14;
  v127 = v99;
  outlined init with copy of DOCGridLayout.Spec?(&v111, &v97, &_s26DocumentManagerExecutables13DOCGridLayoutV0E10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesV011calculationN0_ACSg6layouttMd);
  outlined destroy of DOCGridLayout.LayoutCalculator.CalculationVariables(&v139);
  v93 = v78;
  v94 = v79;
  v95 = v80;
  v96 = v81;
  v89 = v74;
  v90 = v75;
  v91 = v76;
  v92 = v77;
  v85 = v70;
  v86 = v71;
  v87 = v72;
  v88 = v73;
  v83 = v68;
  v84 = v69;
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v83) != 1)
  {
    outlined init with copy of DOCGridLayout.Spec(&v164, &v97);
    result = outlined destroy of CharacterSet?(&v68, &_s26DocumentManagerExecutables13DOCGridLayoutVSgMd);
    v41 = v169;
    a4[4] = v168;
    a4[5] = v41;
    v42 = v170;
    v43 = v165;
    *a4 = v164;
    a4[1] = v43;
    v44 = v167;
    a4[2] = v166;
    a4[3] = v44;
    v46 = v83;
    v45 = v84;
    a4[6] = v42;
    a4[7] = v46;
    v47 = v85;
    v48 = v87;
    v49 = v88;
    a4[10] = v86;
    a4[11] = v48;
    a4[8] = v45;
    a4[9] = v47;
    v50 = v89;
    v51 = v91;
    v52 = v92;
    a4[14] = v90;
    a4[15] = v51;
    a4[12] = v49;
    a4[13] = v50;
    v53 = v93;
    v54 = v95;
    v55 = v96;
    a4[18] = v94;
    a4[19] = v54;
    a4[16] = v52;
    a4[17] = v53;
    v56 = v147;
    v57 = v148;
    v58 = v145;
    a4[28] = v146;
    a4[29] = v56;
    a4[30] = v57;
    v59 = v143;
    v60 = v144;
    v61 = v141;
    a4[24] = v142;
    a4[25] = v59;
    *(a4 + 62) = v149;
    a4[26] = v60;
    a4[27] = v58;
    v62 = v139;
    v63 = v140;
    a4[20] = v55;
    a4[21] = v62;
    a4[22] = v63;
    a4[23] = v61;
    return result;
  }

  v160 = v78;
  v161 = v79;
  v162 = v80;
  v163 = v81;
  v156 = v74;
  v157 = v75;
  v158 = v76;
  v159 = v77;
  v152 = v70;
  v153 = v71;
  v154 = v72;
  v155 = v73;
  v150 = v68;
  v151 = v69;
  v4 = v67;
LABEL_8:
  v115 = v175;
  v116 = v176;
  v117 = v177;
  v111 = v171;
  v112 = v172;
  v114 = v174;
  v113 = v173;
  v118 = v8;
  v119 = v9;
  v120 = v10;
  v121 = v11;
  v122 = v12;
  v123 = v13;
  v124 = v14;
  v135 = v160;
  v136 = v161;
  v137 = v162;
  v138 = v163;
  v131 = v156;
  v132 = v157;
  v133 = v158;
  v134 = v159;
  v127 = v152;
  v128 = v153;
  v129 = v154;
  v130 = v155;
  v125 = v150;
  v126 = v151;
  outlined init with copy of DOCGridLayout.Spec?(&v111, &v97, &_s26DocumentManagerExecutables13DOCGridLayoutV0E10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesV011calculationN0_ACSg6layouttMd);
  outlined destroy of CharacterSet?(&v150, &_s26DocumentManagerExecutables13DOCGridLayoutVSgMd);
  v105 = v147;
  v106 = v148;
  *&v107 = v149;
  v101 = v143;
  v102 = v144;
  v104 = v146;
  v103 = v145;
  v97 = v139;
  v98 = v140;
  v99 = v141;
  v100 = v142;
  DOCGridLayout.LayoutCalculator._compute(for:)(&v97, &v83);
  v82[4] = v168;
  v82[5] = v169;
  v82[0] = v164;
  v82[1] = v165;
  v82[2] = v166;
  v82[3] = v167;
  v82[6] = v170;
  v82[7] = v83;
  v82[10] = v86;
  v82[11] = v87;
  v82[8] = v84;
  v82[9] = v85;
  v82[14] = v90;
  v82[15] = v91;
  v82[12] = v88;
  v82[13] = v89;
  v82[18] = v94;
  v82[19] = v95;
  v82[16] = v92;
  v82[17] = v93;
  v82[28] = v146;
  v82[29] = v147;
  v82[30] = v148;
  v82[24] = v142;
  v82[25] = v143;
  *&v82[31] = v149;
  v82[26] = v144;
  v82[27] = v145;
  v82[20] = v96;
  v82[21] = v139;
  v82[22] = v140;
  v82[23] = v141;
  if (a3)
  {
    outlined init with copy of DOCGridLayout.Spec(&v164, &v97);
    outlined init with copy of DOCGridLayout(&v83, &v97);
    v30 = outlined init with copy of DOCGridLayout.LayoutCalculator.CalculationVariables(&v139, &v97);
    if (one-time initialization token for isCachingDisabled != -1)
    {
      v30 = swift_once();
    }

    if (!isCachingDisabled)
    {
      *&v78 = *&v82[31];
      v107 = v82[17];
      v108 = v82[18];
      v109 = v82[19];
      v110 = v82[20];
      v103 = v82[13];
      v104 = v82[14];
      v105 = v82[15];
      v106 = v82[16];
      v99 = v82[9];
      v100 = v82[10];
      v101 = v82[11];
      v102 = v82[12];
      v97 = v82[7];
      v98 = v82[8];
      v76 = v82[29];
      v77 = v82[30];
      v72 = v82[25];
      v73 = v82[26];
      v74 = v82[27];
      v75 = v82[28];
      v68 = v82[21];
      v69 = v82[22];
      v70 = v82[23];
      v71 = v82[24];
      v38 = *(v4 + 24);
      v39 = MEMORY[0x28223BE20](v30, v31);
      v65 = &v68;
      v66 = &v97;
      (*(*v38 + 168))(closure #1 in DOCGridLayout.LayoutCalculator._addToCache(_:)partial apply, v39);
    }

    outlined destroy of CharacterSet?(&v111, &_s26DocumentManagerExecutables13DOCGridLayoutV0E10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesV011calculationN0_ACSg6layouttMd);
    outlined destroy of DOCGridLayout(&v83);
    outlined destroy of DOCGridLayout.LayoutCalculator.CalculationVariables(&v139);
  }

  else
  {
    outlined init with copy of DOCGridLayout.Spec(&v164, &v97);
    outlined destroy of CharacterSet?(&v111, &_s26DocumentManagerExecutables13DOCGridLayoutV0E10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesV011calculationN0_ACSg6layouttMd);
  }

  return memcpy(a4, v82, 0x1F8uLL);
}

uint64_t DOCGridLayout.LayoutCalculator.CalculationVariables.hash(into:)()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[20];
  DOCGridLayout.Spec.hash(into:)();
  CGSize.hash(into:)(v1, v2);
  UIEdgeInsets.hash(into:)(v3, v4, v5, v6);
  v8 = 0.0;
  if (v7 != 0.0)
  {
    v8 = v7;
  }

  return MEMORY[0x24C1FCC00](*&v8);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCGridLayout.LayoutCalculator.CalculationVariables()
{
  Hasher.init(_seed:)();
  DOCGridLayout.LayoutCalculator.CalculationVariables.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCGridLayout.LayoutCalculator.CalculationVariables()
{
  Hasher.init(_seed:)();
  DOCGridLayout.LayoutCalculator.CalculationVariables.hash(into:)();
  return Hasher._finalize()();
}

uint64_t DOCGridLayout.LayoutCalculator.__layoutByAdjusting(_:toFitColumns:in:canUseCache:silent:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v102 = v2;
  v4 = v3;
  v108 = v5;
  v26 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v279;
  memcpy(v360, v9, sizeof(v360));
  v15 = *v26;
  v14 = *(v26 + 8);
  v16 = *(v26 + 24);
  v113 = *(v26 + 16);
  v114 = v14;
  v17 = *(v26 + 32);
  v116 = *(v26 + 40);
  v117 = v16;
  v364 = *(v26 + 48);
  v18 = *(v26 + 64);
  v19 = *(v26 + 88);
  v361 = *(v26 + 72);
  v362 = v19;
  v363 = *(v26 + 104);
  v20 = *&v360[320];
  v21 = *&v360[280];
  v22 = *&v360[232];
  memcpy(v285, v10, 0x1F8uLL);
  v115 = *&v360[104];
  v126 = *&v360[88];
  *&v127 = *&v360[96];
  v23 = *&v360[80];
  v24 = *&v360[72];
  v124 = *&v360[56];
  v125 = *&v360[64];
  v25 = *&v360[48];
  LODWORD(v26) = v360[42];
  v122 = v360[40];
  v123 = v360[41];
  v121 = *&v360[32];
  v120 = *&v360[16];
  v119 = *v360;
  v27 = *v10;
  v28 = v10[1];
  v284 = v10[2];
  v283 = v28;
  v282 = v27;
  v281 = *(v10 + 56);
  v280 = *(v10 + 88);
  outlined init with copy of DOCGridLayout.LayoutCalculator.CalculationResults(v360, v279);
  outlined init with copy of DOCGridLayout.Spec(v360, v279);
  swift_beginAccess();
  v109 = v8;
  v100 = v17;
  v118 = v15;
  if (v22 >= v8 && v21 >= v20)
  {
    v21 = v114;
    *(&v127 + 1) = v115;
    v30 = v24;
    v20 = v25;
    v25 = v113;
    v31 = v116;
    v17 = v117;
    if ((v4 & 1) == 0)
    {
      goto LABEL_87;
    }

LABEL_84:
    v279[0] = v282;
    v279[1] = v283;
    v279[2] = v284;
    *(v13 + 56) = v281;
    *&v279[3] = v20;
    *(&v279[4] + 1) = v30;
    *(v13 + 88) = v280;
    *&v279[5] = v23;
    *(&v279[6] + 1) = *(&v127 + 1);
    v88 = v279;
    goto LABEL_88;
  }

  v96 = v4;
  v97 = v12;
  v32 = 0;
  v13 = &v279[10] + 8;
  v99 = "line for text %@";
  v105 = v109 + 0.2;
  v101 = v105 + -1.0;
  *&v29 = 136315138;
  v98 = v29;
  v103 = v25;
  v104 = v18;
  v33 = v102;
  v12 = v108;
  v107 = v26;
  v34 = v115;
  v35 = v23;
  while (1)
  {
    v112 = v32;
    v23 = fmax(v35 + -2.0, 4.0);
    v262[0] = v119;
    v31 = fmax(v34 + -2.0, 4.0);
    v262[1] = v120;
    *&v263 = v121;
    BYTE8(v263) = v122;
    BYTE9(v263) = v123;
    BYTE10(v263) = v26;
    *&v264 = v25;
    *(&v264 + 1) = v124;
    *&v265 = v125;
    *(&v265 + 1) = v24;
    v111 = v35;
    *&v266 = v35;
    *(&v266 + 1) = v126;
    *&v267 = v127;
    v115 = v34;
    *(&v267 + 1) = v34;
    v268 = v119;
    v269 = v120;
    *&v270 = v121;
    BYTE8(v270) = v122;
    BYTE9(v270) = v123;
    BYTE10(v270) = v26;
    *&v271 = v25;
    *(&v271 + 1) = v124;
    *&v272 = v125;
    v128 = fmax(v24 + -2.0, 4.0);
    *(&v272 + 1) = v128;
    *&v273 = v23;
    *(&v273 + 1) = v126;
    *&v274 = v127;
    *(&v274 + 1) = v31;
    v279[4] = v272;
    v279[5] = v273;
    v279[6] = v274;
    v279[0] = v119;
    v279[1] = v120;
    v279[3] = v271;
    v279[2] = v270;
    v278[4] = v265;
    v278[5] = v266;
    v278[6] = v267;
    v278[0] = v119;
    v278[1] = v120;
    v278[3] = v264;
    v278[2] = v263;
    outlined init with copy of DOCGridLayout.Spec(v262, v277);
    outlined init with copy of DOCGridLayout.Spec(&v268, v277);
    v36 = specialized static DOCGridLayout.Spec.== infix(_:_:)(v279, v278);
    v275[4] = v279[4];
    v275[5] = v279[5];
    v275[6] = v279[6];
    v275[0] = v279[0];
    v275[1] = v279[1];
    v275[3] = v279[3];
    v275[2] = v279[2];
    outlined destroy of DOCGridLayout.Spec(v275);
    *(&v127 + 1) = v31;
    v110 = v23;
    if (v36)
    {
      v37 = 0;
LABEL_8:
      v38 = v128;
      goto LABEL_28;
    }

    v106 = v25;
    v133[0] = v272;
    v133[1] = v273;
    v133[2] = v274;
    v129 = v268;
    v130 = v269;
    v131 = v270;
    v132 = v271;
    v349 = v268;
    v350 = v269;
    v355 = v274;
    v354 = v273;
    v353 = v272;
    v351 = v270;
    v352 = v271;
    v39 = v118;
    *&v356 = v118;
    v41 = v113;
    v40 = v114;
    *(&v356 + 1) = v114;
    *&v357 = v113;
    v42 = v17;
    v43 = v117;
    *(&v357 + 1) = v117;
    *&v358 = v42;
    v44 = v18;
    v45 = v116;
    *(&v358 + 1) = v116;
    v359 = v44;
    _s26DocumentManagerExecutables13DOCGridLayoutVSgWOi0_(v276);
    if ((v12 & 1) == 0)
    {
      v279[4] = v133[0];
      v279[5] = v133[1];
      v279[6] = v133[2];
      v279[0] = v129;
      v279[1] = v130;
      v279[3] = v132;
      v279[2] = v131;
      *&v279[7] = v39;
      *(&v279[7] + 1) = v40;
      *&v279[8] = v41;
      *(&v279[8] + 1) = v43;
      *&v279[9] = v42;
      *(&v279[9] + 1) = v45;
      *&v279[10] = v44;
      *(&v279[22] + 8) = *&v276[192];
      *(&v279[23] + 8) = *&v276[208];
      *(&v279[20] + 8) = *&v276[160];
      *(&v279[21] + 8) = *&v276[176];
      *(&v279[18] + 8) = *&v276[128];
      *(&v279[19] + 8) = *&v276[144];
      *(&v279[16] + 8) = *&v276[96];
      *(&v279[17] + 8) = *&v276[112];
      *(&v279[14] + 8) = *&v276[64];
      *(&v279[15] + 8) = *&v276[80];
      *(&v279[12] + 8) = *&v276[32];
      *(&v279[13] + 8) = *&v276[48];
      *(&v279[10] + 8) = *v276;
      *(&v279[11] + 8) = *&v276[16];
      outlined init with copy of DOCGridLayout.Spec(&v268, v278);
      outlined init with copy of DOCGridLayout.Spec(&v268, v278);
      goto LABEL_15;
    }

    outlined init with copy of DOCGridLayout.Spec(&v268, v279);
    v46 = outlined init with copy of DOCGridLayout.Spec(&v268, v279);
    if (one-time initialization token for isCachingDisabled != -1)
    {
      v46 = swift_once();
    }

    v39 = v118;
    if (isCachingDisabled)
    {
      v279[4] = v133[0];
      v279[5] = v133[1];
      v279[6] = v133[2];
      v279[0] = v129;
      v279[1] = v130;
      v279[3] = v132;
      v279[2] = v131;
      *&v279[7] = v118;
      *(&v279[7] + 1) = v40;
      *&v279[8] = v41;
      v45 = v116;
      v43 = v117;
      *(&v279[8] + 1) = v117;
      v42 = v100;
      *&v279[9] = v100;
      *(&v279[9] + 1) = v116;
      v44 = v104;
      *&v279[10] = v104;
      *(&v279[22] + 8) = *&v276[192];
      *(&v279[23] + 8) = *&v276[208];
      *(&v279[20] + 8) = *&v276[160];
      *(&v279[21] + 8) = *&v276[176];
      *(&v279[18] + 8) = *&v276[128];
      *(&v279[19] + 8) = *&v276[144];
      *(&v279[16] + 8) = *&v276[96];
      *(&v279[17] + 8) = *&v276[112];
      *(&v279[14] + 8) = *&v276[64];
      *(&v279[15] + 8) = *&v276[80];
      *(&v279[12] + 8) = *&v276[32];
      *(&v279[13] + 8) = *&v276[48];
      *(&v279[10] + 8) = *v276;
      *(&v279[11] + 8) = *&v276[16];
LABEL_15:
      outlined init with copy of DOCGridLayout.Spec?(v279, v278, &_s26DocumentManagerExecutables13DOCGridLayoutV0E10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesV011calculationN0_ACSg6layouttMd);
      outlined destroy of DOCGridLayout.LayoutCalculator.CalculationVariables(&v349);
      v296 = *&v276[160];
      v297 = *&v276[176];
      v298 = *&v276[192];
      v299 = *&v276[208];
      v292 = *&v276[96];
      v293 = *&v276[112];
      v294 = *&v276[128];
      v295 = *&v276[144];
      v288 = *&v276[32];
      v289 = *&v276[48];
      v290 = *&v276[64];
      v291 = *&v276[80];
      v286 = *v276;
      v287 = *&v276[16];
      goto LABEL_16;
    }

    v51 = *(v33 + 24);
    MEMORY[0x28223BE20](v46, v47);
    v94 = &v349;
    v52 = *(*v51 + 160);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables13DOCGridLayoutVSgMd);
    v52(v278, closure #1 in DOCGridLayout.LayoutCalculator._cachedLayout(for:spec:canUseCache:)partial apply, v93, v53);
    v218 = v278[10];
    v219 = v278[11];
    v220 = v278[12];
    v221 = v278[13];
    v214 = v278[6];
    v215 = v278[7];
    v216 = v278[8];
    v217 = v278[9];
    v210 = v278[2];
    v211 = v278[3];
    v212 = v278[4];
    v213 = v278[5];
    v208 = v278[0];
    v209 = v278[1];
    v279[4] = v133[0];
    v279[5] = v133[1];
    v279[6] = v133[2];
    v279[0] = v129;
    v279[1] = v130;
    v279[3] = v132;
    v279[2] = v131;
    *&v279[7] = v39;
    *(&v279[7] + 1) = v40;
    *&v279[8] = v41;
    *(&v279[8] + 1) = v117;
    v17 = v100;
    *&v279[9] = v100;
    *(&v279[9] + 1) = v116;
    v18 = v104;
    *&v279[10] = v104;
    *(&v279[22] + 8) = v278[12];
    *(&v279[23] + 8) = v278[13];
    *(&v279[20] + 8) = v278[10];
    *(&v279[21] + 8) = v278[11];
    *(&v279[18] + 8) = v278[8];
    *(&v279[19] + 8) = v278[9];
    *(&v279[16] + 8) = v278[6];
    *(&v279[17] + 8) = v278[7];
    *(&v279[14] + 8) = v278[4];
    *(&v279[15] + 8) = v278[5];
    *(&v279[12] + 8) = v278[2];
    *(&v279[13] + 8) = v278[3];
    *(&v279[10] + 8) = v278[0];
    *(&v279[11] + 8) = v278[1];
    outlined init with copy of DOCGridLayout.Spec?(v279, v278, &_s26DocumentManagerExecutables13DOCGridLayoutV0E10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesV011calculationN0_ACSg6layouttMd);
    outlined destroy of DOCGridLayout.LayoutCalculator.CalculationVariables(&v349);
    v277[10] = v218;
    v277[11] = v219;
    v277[12] = v220;
    v277[13] = v221;
    v277[6] = v214;
    v277[7] = v215;
    v277[8] = v216;
    v277[9] = v217;
    v277[2] = v210;
    v277[3] = v211;
    v277[4] = v212;
    v277[5] = v213;
    v277[0] = v208;
    v277[1] = v209;
    if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v277) != 1)
    {
      outlined destroy of CharacterSet?(&v208, &_s26DocumentManagerExecutables13DOCGridLayoutVSgMd);
      v251 = v272;
      v252 = v273;
      v253 = v274;
      v247 = v268;
      v248 = v269;
      v250 = v271;
      v249 = v270;
      v256 = v277[2];
      v257 = v277[3];
      v254 = v277[0];
      v255 = v277[1];
      v22 = *(&v277[7] + 1);
      v261 = *&v277[7];
      v259 = v277[5];
      v260 = v277[6];
      v258 = v277[4];
      v246 = *&v277[10];
      v245 = v277[9];
      v244 = v277[8];
      v243 = v277[12];
      v242 = v277[11];
      v21 = *(&v277[10] + 1);
      v48 = *(&v277[13] + 1);
      v20 = *&v277[13];
      v232 = v350;
      v231 = v349;
      v236 = v354;
      v235 = v353;
      v233 = v351;
      v234 = v352;
      v241 = v359;
      v240 = v358;
      v239 = v357;
      v237 = v355;
      v238 = v356;
      v33 = v102;
      v23 = v110;
      v31 = *(&v127 + 1);
      v12 = v108;
      v25 = v106;
      goto LABEL_26;
    }

    v296 = v218;
    v297 = v219;
    v298 = v220;
    v299 = v221;
    v292 = v214;
    v293 = v215;
    v294 = v216;
    v295 = v217;
    v288 = v210;
    v289 = v211;
    v290 = v212;
    v291 = v213;
    v286 = v208;
    v287 = v209;
    v42 = v17;
    v44 = v18;
    v45 = v116;
    v43 = v117;
    v33 = v102;
    v12 = v108;
    v39 = v118;
LABEL_16:
    v279[4] = v133[0];
    v279[5] = v133[1];
    v279[6] = v133[2];
    v279[0] = v129;
    v279[1] = v130;
    v279[3] = v132;
    v279[2] = v131;
    *&v279[7] = v39;
    *(&v279[7] + 1) = v40;
    *&v279[8] = v41;
    *(&v279[8] + 1) = v43;
    *&v279[9] = v42;
    *(&v279[9] + 1) = v45;
    *&v279[10] = v44;
    *(&v279[20] + 8) = v296;
    *(&v279[21] + 8) = v297;
    *(&v279[22] + 8) = v298;
    *(&v279[23] + 8) = v299;
    *(&v279[16] + 8) = v292;
    *(&v279[17] + 8) = v293;
    *(&v279[18] + 8) = v294;
    *(&v279[19] + 8) = v295;
    *(&v279[12] + 8) = v288;
    *(&v279[13] + 8) = v289;
    *(&v279[14] + 8) = v290;
    *(&v279[15] + 8) = v291;
    *(&v279[10] + 8) = v286;
    *(&v279[11] + 8) = v287;
    outlined init with copy of DOCGridLayout.Spec?(v279, v278, &_s26DocumentManagerExecutables13DOCGridLayoutV0E10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesV011calculationN0_ACSg6layouttMd);
    outlined destroy of CharacterSet?(&v286, &_s26DocumentManagerExecutables13DOCGridLayoutVSgMd);
    v228 = v357;
    v229 = v358;
    v230 = v359;
    v225[1] = v353;
    v226[0] = v354;
    v227 = v356;
    v226[1] = v355;
    v222 = v349;
    v223 = v350;
    v225[0] = v352;
    v224 = v351;
    DOCGridLayout.LayoutCalculator._compute(for:)(&v222, v278);
    v218 = v278[10];
    v219 = v278[11];
    v220 = v278[12];
    v221 = v278[13];
    v214 = v278[6];
    v215 = v278[7];
    v216 = v278[8];
    v217 = v278[9];
    v210 = v278[2];
    v211 = v278[3];
    v212 = v278[4];
    v213 = v278[5];
    v208 = v278[0];
    v209 = v278[1];
    v278[4] = v272;
    v278[5] = v273;
    v278[6] = v274;
    v278[0] = v268;
    v278[1] = v269;
    v278[3] = v271;
    v278[2] = v270;
    v278[9] = v210;
    v278[10] = v211;
    v278[7] = v208;
    v278[8] = v209;
    v22 = *(&v215 + 1);
    *&v278[14] = v215;
    v278[12] = v213;
    v278[13] = v214;
    v278[11] = v212;
    *&v203 = v218;
    v202 = v217;
    v201 = v216;
    v195 = v220;
    v194 = v219;
    v21 = *(&v218 + 1);
    v48 = *(&v221 + 1);
    v20 = *&v221;
    v223 = v350;
    v222 = v349;
    v226[0] = v354;
    v225[1] = v353;
    v224 = v351;
    v225[0] = v352;
    v230 = v359;
    v229 = v358;
    v228 = v357;
    v226[1] = v355;
    v227 = v356;
    v277[12] = v213;
    v277[13] = v214;
    *&v277[14] = v215;
    v277[8] = v209;
    v277[9] = v210;
    v277[11] = v212;
    v277[10] = v211;
    v277[4] = v272;
    v277[5] = v273;
    v277[7] = v208;
    v277[6] = v274;
    v277[0] = v268;
    v277[1] = v269;
    v277[3] = v271;
    v277[2] = v270;
    v17 = v42;
    v18 = v44;
    if (v12)
    {
      outlined init with copy of DOCGridLayout.Spec(&v268, v278);
      outlined init with copy of DOCGridLayout(&v208, v278);
      v49 = outlined init with copy of DOCGridLayout.LayoutCalculator.CalculationVariables(&v349, v278);
      v23 = v110;
      v31 = *(&v127 + 1);
      v25 = v106;
      if (one-time initialization token for isCachingDisabled != -1)
      {
        v49 = swift_once();
      }

      if (isCachingDisabled)
      {
        outlined destroy of DOCGridLayout.Spec(&v268);
        outlined destroy of CharacterSet?(v279, &_s26DocumentManagerExecutables13DOCGridLayoutV0E10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesV011calculationN0_ACSg6layouttMd);
        outlined destroy of DOCGridLayout(&v208);
        outlined destroy of DOCGridLayout.LayoutCalculator.CalculationVariables(&v349);
      }

      else
      {
        v336 = v277[11];
        v337 = v277[12];
        v338 = v277[13];
        v332 = v277[7];
        v333 = v277[8];
        v334 = v277[9];
        v335 = v277[10];
        v339 = *&v277[14];
        v340 = v22;
        v343 = v203;
        v341 = v201;
        v342 = v202;
        v345 = v194;
        v346 = v195;
        v344 = v21;
        v347 = v20;
        v348 = v48;
        v330[1] = v223;
        v330[0] = v222;
        v330[5] = v226[0];
        v330[4] = v225[1];
        v330[2] = v224;
        v330[3] = v225[0];
        v331 = v230;
        v330[9] = v229;
        v330[8] = v228;
        v330[6] = v226[1];
        v330[7] = v227;
        v54 = *(v33 + 24);
        v55 = MEMORY[0x28223BE20](v49, v50);
        v94 = v330;
        v95 = v56;
        (*(*v54 + 168))(closure #1 in DOCGridLayout.LayoutCalculator._addToCache(_:)partial apply, v55);
        outlined destroy of DOCGridLayout.Spec(&v268);
        outlined destroy of CharacterSet?(v279, &_s26DocumentManagerExecutables13DOCGridLayoutV0E10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesV011calculationN0_ACSg6layouttMd);
        outlined destroy of DOCGridLayout(&v208);
        outlined destroy of DOCGridLayout.LayoutCalculator.CalculationVariables(&v349);
        v12 = v108;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(v279, &_s26DocumentManagerExecutables13DOCGridLayoutV0E10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesV011calculationN0_ACSg6layouttMd);
      v23 = v110;
      v31 = *(&v127 + 1);
      v25 = v106;
    }

    v259 = v277[12];
    v260 = v277[13];
    v261 = *&v277[14];
    v255 = v277[8];
    v256 = v277[9];
    v258 = v277[11];
    v257 = v277[10];
    v251 = v277[4];
    v252 = v277[5];
    v254 = v277[7];
    v253 = v277[6];
    v247 = v277[0];
    v248 = v277[1];
    v250 = v277[3];
    v249 = v277[2];
    v244 = v201;
    v245 = v202;
    v246 = v203;
    v242 = v194;
    v243 = v195;
    v239 = v228;
    v240 = v229;
    v241 = v230;
    v235 = v225[1];
    v236 = v226[0];
    v238 = v227;
    v237 = v226[1];
    v231 = v222;
    v232 = v223;
    v234 = v225[0];
    v233 = v224;
LABEL_26:
    memcpy(v279, v285, 0x1F8uLL);
    v285[12] = v259;
    v285[13] = v260;
    v285[8] = v255;
    v285[9] = v256;
    v285[11] = v258;
    v285[10] = v257;
    v285[4] = v251;
    v285[5] = v252;
    v285[7] = v254;
    v285[6] = v253;
    v285[0] = v247;
    v285[1] = v248;
    v285[3] = v250;
    v285[2] = v249;
    *&v285[14] = v261;
    *(&v285[14] + 1) = v22;
    v285[15] = v244;
    v285[16] = v245;
    *&v285[17] = v246;
    v285[18] = v242;
    v285[19] = v243;
    *(&v285[17] + 1) = v21;
    *&v285[20] = v20;
    *(&v285[20] + 1) = v48;
    v285[21] = v231;
    v285[22] = v232;
    v285[25] = v235;
    v285[26] = v236;
    v285[23] = v233;
    v285[24] = v234;
    *&v285[31] = v241;
    v285[29] = v239;
    v285[30] = v240;
    v285[27] = v237;
    v285[28] = v238;
    outlined destroy of DOCGridLayout.LayoutCalculator.CalculationResults(v279);
    if (v22 >= v109)
    {
      LOBYTE(v26) = v107;
      if (v21 >= v20)
      {
        v278[0] = v119;
        v278[1] = v120;
        *&v278[2] = v121;
        BYTE8(v278[2]) = v122;
        BYTE9(v278[2]) = v123;
        BYTE10(v278[2]) = v107;
        *&v278[3] = v25;
        *(&v278[3] + 1) = v124;
        *&v278[4] = v125;
        *(&v278[4] + 1) = v24;
        *&v278[5] = v111;
        *(&v278[5] + 1) = v126;
        *&v278[6] = v127;
        *(&v278[6] + 1) = v115;
        outlined destroy of DOCGridLayout.Spec(v278);
        v32 = v112 + 1;
        v30 = v128;
        if (__OFADD__(v112, 1))
        {
          goto LABEL_89;
        }

        goto LABEL_72;
      }

      v37 = 1;
      goto LABEL_8;
    }

    v37 = 1;
    v38 = v128;
    LOBYTE(v26) = v107;
LABEL_28:
    v201 = v119;
    v202 = v120;
    *&v203 = v121;
    BYTE8(v203) = v122;
    BYTE9(v203) = v123;
    BYTE10(v203) = v26;
    *&v204 = v25;
    *(&v204 + 1) = v124;
    *&v205 = v125;
    *(&v205 + 1) = v38;
    *&v206 = v23;
    *(&v206 + 1) = v126;
    *&v207 = v127;
    *(&v207 + 1) = v31;
    v223 = v120;
    v222 = v119;
    v226[1] = v207;
    v226[0] = v206;
    v225[1] = v205;
    v224 = v203;
    v225[0] = v204;
    *&v227 = v118;
    *(&v227 + 1) = v114;
    *&v228 = v113;
    *(&v228 + 1) = v117;
    *&v229 = v17;
    *(&v229 + 1) = v116;
    v230 = v18;
    if (v105 >= 1.0)
    {
      outlined init with copy of DOCGridLayout.Spec(&v201, v279);
      UIFloorToScale();
      v57 = vaddq_f64(*(v225 + 8), *(v225 + 8));
      v59 = v58 - v57.f64[0] - v57.f64[1];
      swift_beginAccess();
      if (v59 >= *&static DOCItemCellIconWidth.size_largest)
      {
        v59 = *&static DOCItemCellIconWidth.size_largest;
      }

      swift_beginAccess();
      if (*&static DOCItemCellIconWidth.size_smallest > v59)
      {
        v59 = *&static DOCItemCellIconWidth.size_smallest;
      }

      *&v60 = COERCE_DOUBLE(specialized static DOCItemCellIconWidth.findCloseMatchKnownIconAssetWidth(for:threshold:)(v59, 1.0));
      if (v61)
      {
        UIRoundToScale();
        v31 = v62;
        v103 = v62;
      }

      else
      {
        v31 = *&v60;
        v103 = *&v60;
      }

      goto LABEL_45;
    }

    outlined init with copy of DOCGridLayout.Spec(&v201, v279);
    if (DOCIsInternalBuild())
    {
      v31 = v25;
LABEL_45:
      v69 = v128;
      goto LABEL_46;
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    __swift_project_value_buffer(v63, static Logger.UI);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v279[0] = v26;
      *v66 = v98;
      *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003BLL, v99 | 0x8000000000000000, v279);
      _os_log_impl(&dword_2493AC000, v64, v65, "assertion failure: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      v67 = v26;
      LOBYTE(v26) = v107;
      MEMORY[0x24C1FE850](v67, -1, -1);
      v68 = v66;
      v33 = v102;
      MEMORY[0x24C1FE850](v68, -1, -1);
    }

    v31 = v25;
    v69 = v128;
    v12 = v108;
LABEL_46:
    v181[0] = v119;
    v181[1] = v120;
    *&v182 = v121;
    BYTE8(v182) = v122;
    BYTE9(v182) = v123;
    BYTE10(v182) = v26;
    *&v183 = v25;
    *(&v183 + 1) = v124;
    *&v184 = v125;
    *(&v184 + 1) = v24;
    *&v185 = v111;
    *(&v185 + 1) = v126;
    *&v186 = v127;
    *(&v186 + 1) = v115;
    v187 = v119;
    v188 = v120;
    *&v189 = v121;
    BYTE8(v189) = v122;
    BYTE9(v189) = v123;
    BYTE10(v189) = v26;
    *&v190 = v31;
    *(&v190 + 1) = v124;
    *&v191 = v125;
    *(&v191 + 1) = v69;
    *&v192 = v23;
    *(&v192 + 1) = v126;
    v193 = v127;
    v279[4] = v191;
    v279[5] = v192;
    v279[6] = v127;
    v279[0] = v119;
    v279[1] = v120;
    v279[3] = v190;
    v279[2] = v189;
    v278[4] = v184;
    v278[5] = v185;
    v278[6] = v186;
    v278[0] = v119;
    v278[1] = v120;
    v278[3] = v183;
    v278[2] = v182;
    outlined init with copy of DOCGridLayout.Spec(&v187, v277);
    v70 = specialized static DOCGridLayout.Spec.== infix(_:_:)(v279, v278);
    v198 = v279[4];
    v199 = v279[5];
    v200 = v279[6];
    v194 = v279[0];
    v195 = v279[1];
    v197 = v279[3];
    v196 = v279[2];
    outlined destroy of DOCGridLayout.Spec(&v194);
    if (!v70)
    {
      v178 = v191;
      v179 = v192;
      v180 = v193;
      v174 = v187;
      v175 = v188;
      v177 = v190;
      v176 = v189;
      v319 = v187;
      v320 = v188;
      v325 = v193;
      v324 = v192;
      v323 = v191;
      v321 = v189;
      v322 = v190;
      v72 = v117;
      v71 = v118;
      *&v326 = v118;
      v73 = v113;
      v25 = v114;
      *(&v326 + 1) = v114;
      *&v327 = v113;
      *(&v327 + 1) = v117;
      *&v328 = v17;
      v74 = v116;
      *(&v328 + 1) = v116;
      v329 = v18;
      _s26DocumentManagerExecutables13DOCGridLayoutVSgWOi0_(v276);
      if (v12)
      {
        outlined init with copy of DOCGridLayout.Spec(&v187, v279);
        v75 = outlined init with copy of DOCGridLayout.Spec(&v187, v279);
        if (one-time initialization token for isCachingDisabled != -1)
        {
          v75 = swift_once();
        }

        if (!isCachingDisabled)
        {
          v79 = *(v33 + 24);
          MEMORY[0x28223BE20](v75, v76);
          v94 = &v319;
          v80 = *(*v79 + 160);
          v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables13DOCGridLayoutVSgMd);
          v80(v278, closure #1 in DOCGridLayout.LayoutCalculator._cachedLayout(for:spec:canUseCache:)partial apply, v93, v81);
          v218 = v278[10];
          v219 = v278[11];
          v220 = v278[12];
          v221 = v278[13];
          v214 = v278[6];
          v215 = v278[7];
          v216 = v278[8];
          v217 = v278[9];
          v210 = v278[2];
          v211 = v278[3];
          v212 = v278[4];
          v213 = v278[5];
          v208 = v278[0];
          v209 = v278[1];
          v279[4] = v178;
          v279[5] = v179;
          v279[6] = v180;
          v279[0] = v174;
          v279[1] = v175;
          v279[3] = v177;
          v279[2] = v176;
          *&v279[7] = v118;
          *(&v279[7] + 1) = v25;
          *&v279[8] = v73;
          *(&v279[8] + 1) = v72;
          *&v279[9] = v17;
          *(&v279[9] + 1) = v74;
          *&v279[10] = v104;
          *(&v279[22] + 8) = v278[12];
          *(&v279[23] + 8) = v278[13];
          *(&v279[20] + 8) = v278[10];
          *(&v279[21] + 8) = v278[11];
          *(&v279[18] + 8) = v278[8];
          *(&v279[19] + 8) = v278[9];
          *(&v279[16] + 8) = v278[6];
          *(&v279[17] + 8) = v278[7];
          *(&v279[14] + 8) = v278[4];
          *(&v279[15] + 8) = v278[5];
          *(&v279[12] + 8) = v278[2];
          *(&v279[13] + 8) = v278[3];
          *(&v279[10] + 8) = v278[0];
          *(&v279[11] + 8) = v278[1];
          outlined init with copy of DOCGridLayout.Spec?(v279, v278, &_s26DocumentManagerExecutables13DOCGridLayoutV0E10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesV011calculationN0_ACSg6layouttMd);
          outlined destroy of DOCGridLayout.LayoutCalculator.CalculationVariables(&v319);
          v277[10] = v218;
          v277[11] = v219;
          v277[12] = v220;
          v277[13] = v221;
          v277[6] = v214;
          v277[7] = v215;
          v277[8] = v216;
          v277[9] = v217;
          v277[2] = v210;
          v277[3] = v211;
          v277[4] = v212;
          v277[5] = v213;
          v277[0] = v208;
          v277[1] = v209;
          if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v277) != 1)
          {
            outlined destroy of DOCGridLayout.Spec(v181);
            outlined destroy of DOCGridLayout.LayoutCalculator.CalculationVariables(&v222);
            outlined destroy of CharacterSet?(&v208, &_s26DocumentManagerExecutables13DOCGridLayoutVSgMd);
            v163 = v191;
            v164 = v192;
            v165 = v193;
            v159 = v187;
            v160 = v188;
            v161 = v189;
            v162 = v190;
            v168 = v277[2];
            v169 = v277[3];
            v166 = v277[0];
            v167 = v277[1];
            v22 = *(&v277[7] + 1);
            v173 = *&v277[7];
            v171 = v277[5];
            v172 = v277[6];
            v170 = v277[4];
            v158 = *&v277[10];
            v156 = v277[8];
            v157 = v277[9];
            v154 = v277[11];
            v155 = v277[12];
            v21 = *(&v277[10] + 1);
            v26 = *(&v277[13] + 1);
            v20 = *&v277[13];
            v143 = v319;
            v144 = v320;
            v147 = v323;
            v148 = v324;
            v145 = v321;
            v146 = v322;
            v153 = v329;
            v151 = v327;
            v152 = v328;
            v149 = v325;
            v150 = v326;
            v18 = v104;
            v33 = v102;
            v23 = v110;
            v12 = v108;
LABEL_68:
            ++v37;
            memcpy(v279, v285, 0x1F8uLL);
            v285[12] = v171;
            v285[13] = v172;
            v285[8] = v167;
            v285[9] = v168;
            v285[11] = v170;
            v285[10] = v169;
            v285[4] = v163;
            v285[5] = v164;
            v285[7] = v166;
            v285[6] = v165;
            v285[0] = v159;
            v285[1] = v160;
            v285[3] = v162;
            v285[2] = v161;
            *&v285[14] = v173;
            *(&v285[14] + 1) = v22;
            v285[15] = v156;
            v285[16] = v157;
            *&v285[17] = v158;
            v285[18] = v154;
            v285[19] = v155;
            *(&v285[17] + 1) = v21;
            *&v285[20] = v20;
            *(&v285[20] + 1) = v26;
            v285[21] = v143;
            v285[22] = v144;
            v285[25] = v147;
            v285[26] = v148;
            v285[23] = v145;
            v285[24] = v146;
            *&v285[31] = v153;
            v285[29] = v151;
            v285[30] = v152;
            v285[27] = v149;
            v285[28] = v150;
            outlined destroy of DOCGridLayout.LayoutCalculator.CalculationResults(v279);
            LOBYTE(v26) = v107;
            goto LABEL_69;
          }

          v296 = v218;
          v297 = v219;
          v298 = v220;
          v299 = v221;
          v292 = v214;
          v293 = v215;
          v294 = v216;
          v295 = v217;
          v288 = v210;
          v289 = v211;
          v290 = v212;
          v291 = v213;
          v286 = v208;
          v287 = v209;
          v71 = v118;
          v18 = v104;
          v33 = v102;
LABEL_55:
          v279[4] = v178;
          v279[5] = v179;
          v279[6] = v180;
          v279[0] = v174;
          v279[1] = v175;
          v279[3] = v177;
          v279[2] = v176;
          *&v279[7] = v71;
          *(&v279[7] + 1) = v25;
          *&v279[8] = v73;
          *(&v279[8] + 1) = v72;
          *&v279[9] = v17;
          *(&v279[9] + 1) = v74;
          *&v279[10] = v18;
          *(&v279[20] + 8) = v296;
          *(&v279[21] + 8) = v297;
          *(&v279[22] + 8) = v298;
          *(&v279[23] + 8) = v299;
          *(&v279[16] + 8) = v292;
          *(&v279[17] + 8) = v293;
          *(&v279[18] + 8) = v294;
          *(&v279[19] + 8) = v295;
          *(&v279[12] + 8) = v288;
          *(&v279[13] + 8) = v289;
          *(&v279[14] + 8) = v290;
          *(&v279[15] + 8) = v291;
          *(&v279[10] + 8) = v286;
          *(&v279[11] + 8) = v287;
          outlined init with copy of DOCGridLayout.Spec?(v279, v278, &_s26DocumentManagerExecutables13DOCGridLayoutV0E10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesV011calculationN0_ACSg6layouttMd);
          outlined destroy of CharacterSet?(&v286, &_s26DocumentManagerExecutables13DOCGridLayoutVSgMd);
          v135 = v327;
          v136 = v328;
          v137 = v329;
          v133[0] = v323;
          v133[1] = v324;
          v133[2] = v325;
          v134 = v326;
          v129 = v319;
          v130 = v320;
          v131 = v321;
          v132 = v322;
          DOCGridLayout.LayoutCalculator._compute(for:)(&v129, v278);
          v218 = v278[10];
          v219 = v278[11];
          v220 = v278[12];
          v221 = v278[13];
          v214 = v278[6];
          v215 = v278[7];
          v216 = v278[8];
          v217 = v278[9];
          v210 = v278[2];
          v211 = v278[3];
          v212 = v278[4];
          v213 = v278[5];
          v208 = v278[0];
          v209 = v278[1];
          v278[4] = v191;
          v278[5] = v192;
          v278[6] = v193;
          v278[0] = v187;
          v278[1] = v188;
          v278[3] = v190;
          v278[2] = v189;
          v278[9] = v210;
          v278[10] = v211;
          v278[7] = v208;
          v278[8] = v209;
          v22 = *(&v215 + 1);
          *&v278[14] = v215;
          v278[12] = v213;
          v278[13] = v214;
          v278[11] = v212;
          v142 = v218;
          v140 = v216;
          v141 = v217;
          v138 = v219;
          v139 = v220;
          v21 = *(&v218 + 1);
          v26 = *(&v221 + 1);
          v20 = *&v221;
          v129 = v319;
          v130 = v320;
          v133[0] = v323;
          v133[1] = v324;
          v131 = v321;
          v132 = v322;
          v137 = v329;
          v135 = v327;
          v136 = v328;
          v133[2] = v325;
          v134 = v326;
          v277[12] = v213;
          v277[13] = v214;
          *&v277[14] = v215;
          v277[8] = v209;
          v277[9] = v210;
          v277[11] = v212;
          v277[10] = v211;
          v277[4] = v191;
          v277[5] = v192;
          v277[7] = v208;
          v277[6] = v193;
          v277[0] = v187;
          v277[1] = v188;
          v277[3] = v190;
          v277[2] = v189;
          if (v108)
          {
            outlined init with copy of DOCGridLayout.Spec(&v187, v278);
            outlined init with copy of DOCGridLayout(&v208, v278);
            v77 = outlined init with copy of DOCGridLayout.LayoutCalculator.CalculationVariables(&v319, v278);
            v23 = v110;
            if (one-time initialization token for isCachingDisabled != -1)
            {
              v77 = swift_once();
            }

            if (!isCachingDisabled)
            {
              v306 = v277[11];
              v307 = v277[12];
              v308 = v277[13];
              v302 = v277[7];
              v303 = v277[8];
              v304 = v277[9];
              v305 = v277[10];
              v309 = *&v277[14];
              v310 = v22;
              v313 = v142;
              v311 = v140;
              v312 = v141;
              v315 = v138;
              v316 = v139;
              v314 = v21;
              v317 = v20;
              v318 = v26;
              v300[1] = v130;
              v300[0] = v129;
              v300[5] = v133[1];
              v300[4] = v133[0];
              v300[2] = v131;
              v300[3] = v132;
              v301 = v137;
              v300[9] = v136;
              v300[8] = v135;
              v300[6] = v133[2];
              v300[7] = v134;
              v82 = *(v33 + 24);
              v83 = MEMORY[0x28223BE20](v77, v78);
              v94 = v300;
              v95 = v84;
              (*(*v82 + 168))(closure #1 in DOCGridLayout.LayoutCalculator._addToCache(_:)partial apply, v83);
            }

            outlined destroy of DOCGridLayout.Spec(v181);
            outlined destroy of DOCGridLayout.LayoutCalculator.CalculationVariables(&v222);
            outlined destroy of DOCGridLayout.Spec(&v187);
            outlined destroy of CharacterSet?(v279, &_s26DocumentManagerExecutables13DOCGridLayoutV0E10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesV011calculationN0_ACSg6layouttMd);
            outlined destroy of DOCGridLayout(&v208);
            outlined destroy of DOCGridLayout.LayoutCalculator.CalculationVariables(&v319);
          }

          else
          {
            outlined init with copy of DOCGridLayout.Spec(&v187, v278);
            outlined init with copy of DOCGridLayout(&v208, v278);
            outlined init with copy of DOCGridLayout.LayoutCalculator.CalculationVariables(&v319, v278);
            outlined destroy of DOCGridLayout.Spec(v181);
            outlined destroy of DOCGridLayout.LayoutCalculator.CalculationVariables(&v222);
            outlined destroy of DOCGridLayout.Spec(&v187);
            outlined destroy of CharacterSet?(v279, &_s26DocumentManagerExecutables13DOCGridLayoutV0E10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesV011calculationN0_ACSg6layouttMd);
            outlined destroy of DOCGridLayout(&v208);
            outlined destroy of DOCGridLayout.LayoutCalculator.CalculationVariables(&v319);
            v23 = v110;
          }

          v12 = v108;
          v171 = v277[12];
          v172 = v277[13];
          v173 = *&v277[14];
          v167 = v277[8];
          v168 = v277[9];
          v169 = v277[10];
          v170 = v277[11];
          v163 = v277[4];
          v164 = v277[5];
          v165 = v277[6];
          v166 = v277[7];
          v159 = v277[0];
          v160 = v277[1];
          v161 = v277[2];
          v162 = v277[3];
          v156 = v140;
          v157 = v141;
          v158 = v142;
          v154 = v138;
          v155 = v139;
          v151 = v135;
          v152 = v136;
          v153 = v137;
          v147 = v133[0];
          v148 = v133[1];
          v149 = v133[2];
          v150 = v134;
          v143 = v129;
          v144 = v130;
          v145 = v131;
          v146 = v132;
          goto LABEL_68;
        }

        v279[4] = v178;
        v279[5] = v179;
        v279[6] = v180;
        v279[0] = v174;
        v279[1] = v175;
        v279[3] = v177;
        v279[2] = v176;
        v71 = v118;
        *&v279[7] = v118;
        *(&v279[7] + 1) = v25;
        *&v279[8] = v73;
        *(&v279[8] + 1) = v72;
        *&v279[9] = v17;
        *(&v279[9] + 1) = v74;
        v18 = v104;
        *&v279[10] = v104;
        *(&v279[22] + 8) = *&v276[192];
        *(&v279[23] + 8) = *&v276[208];
        *(&v279[20] + 8) = *&v276[160];
        *(&v279[21] + 8) = *&v276[176];
        *(&v279[18] + 8) = *&v276[128];
        *(&v279[19] + 8) = *&v276[144];
        *(&v279[16] + 8) = *&v276[96];
        *(&v279[17] + 8) = *&v276[112];
        *(&v279[14] + 8) = *&v276[64];
        *(&v279[15] + 8) = *&v276[80];
        *(&v279[12] + 8) = *&v276[32];
        *(&v279[13] + 8) = *&v276[48];
        *(&v279[10] + 8) = *v276;
        *(&v279[11] + 8) = *&v276[16];
      }

      else
      {
        v279[4] = v178;
        v279[5] = v179;
        v279[6] = v180;
        v279[0] = v174;
        v279[1] = v175;
        v279[3] = v177;
        v279[2] = v176;
        *&v279[7] = v71;
        *(&v279[7] + 1) = v25;
        *&v279[8] = v73;
        *(&v279[8] + 1) = v72;
        *&v279[9] = v17;
        *(&v279[9] + 1) = v74;
        *&v279[10] = v18;
        *(&v279[22] + 8) = *&v276[192];
        *(&v279[23] + 8) = *&v276[208];
        *(&v279[20] + 8) = *&v276[160];
        *(&v279[21] + 8) = *&v276[176];
        *(&v279[18] + 8) = *&v276[128];
        *(&v279[19] + 8) = *&v276[144];
        *(&v279[16] + 8) = *&v276[96];
        *(&v279[17] + 8) = *&v276[112];
        *(&v279[14] + 8) = *&v276[64];
        *(&v279[15] + 8) = *&v276[80];
        *(&v279[12] + 8) = *&v276[32];
        *(&v279[13] + 8) = *&v276[48];
        *(&v279[10] + 8) = *v276;
        *(&v279[11] + 8) = *&v276[16];
        outlined init with copy of DOCGridLayout.Spec(&v187, v278);
        outlined init with copy of DOCGridLayout.Spec(&v187, v278);
      }

      outlined init with copy of DOCGridLayout.Spec?(v279, v278, &_s26DocumentManagerExecutables13DOCGridLayoutV0E10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesV011calculationN0_ACSg6layouttMd);
      outlined destroy of DOCGridLayout.LayoutCalculator.CalculationVariables(&v319);
      v296 = *&v276[160];
      v297 = *&v276[176];
      v298 = *&v276[192];
      v299 = *&v276[208];
      v292 = *&v276[96];
      v293 = *&v276[112];
      v294 = *&v276[128];
      v295 = *&v276[144];
      v288 = *&v276[32];
      v289 = *&v276[48];
      v290 = *&v276[64];
      v291 = *&v276[80];
      v286 = *v276;
      v287 = *&v276[16];
      goto LABEL_55;
    }

    outlined destroy of DOCGridLayout.LayoutCalculator.CalculationVariables(&v222);
    outlined destroy of DOCGridLayout.Spec(v181);
LABEL_69:
    v32 = v112 + v37;
    v30 = v128;
    if (__OFADD__(v112, v37))
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (!v37)
    {
      break;
    }

    v25 = v31;
LABEL_72:
    v34 = *(&v127 + 1);
    v35 = v23;
    v24 = v30;
    if (v22 >= v109)
    {
      v34 = *(&v127 + 1);
      v35 = v23;
      v24 = v30;
      if (v21 >= v20)
      {
        break;
      }
    }
  }

  if (v32 < 1)
  {
    v12 = v97;
    v13 = v279;
    v25 = v113;
    v21 = v114;
    v31 = v116;
    v17 = v117;
    LOBYTE(v33) = v96;
    v20 = v103;
LABEL_83:
    if ((v33 & 1) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_84;
  }

  v85 = v12;
  v12 = v97;
  v13 = v279;
  v25 = v113;
  v21 = v114;
  v31 = v116;
  v17 = v117;
  LOBYTE(v33) = v96;
  v20 = v103;
  if ((v85 & 1) == 0)
  {
    goto LABEL_83;
  }

  memcpy(v279, v285, 0x1F8uLL);
  v86 = outlined init with copy of DOCGridLayout.LayoutCalculator.CalculationResults(v279, v278);
  if (one-time initialization token for isCachingDisabled != -1)
  {
LABEL_90:
    v86 = swift_once();
  }

  if (!isCachingDisabled)
  {
    *&v218 = *&v279[31];
    v296 = v279[17];
    v297 = v279[18];
    v298 = v279[19];
    v299 = v279[20];
    v292 = v279[13];
    v293 = v279[14];
    v294 = v279[15];
    v295 = v279[16];
    v288 = v279[9];
    v289 = v279[10];
    v290 = v279[11];
    v291 = v279[12];
    v286 = v279[7];
    v287 = v279[8];
    v216 = v279[29];
    v217 = v279[30];
    v212 = v279[25];
    v213 = v279[26];
    v215 = v279[28];
    v214 = v279[27];
    v208 = v279[21];
    v209 = v279[22];
    v211 = v279[24];
    v210 = v279[23];
    v89 = *(v102 + 24);
    v90 = MEMORY[0x28223BE20](v86, v87);
    v94 = &v208;
    v95 = &v286;
    (*(*v89 + 168))(partial apply for closure #1 in DOCGridLayout.LayoutCalculator._addToCache(_:), v90);
  }

  outlined destroy of DOCGridLayout.LayoutCalculator.CalculationResults(v279);
  v30 = v128;
  if (v33)
  {
    goto LABEL_84;
  }

LABEL_87:
  v91 = v30;
  memcpy(v277, v360, 0x1F8uLL);
  memcpy(v278, v285, 0x1F8uLL);
  memcpy(v276, v285, sizeof(v276));
  *&v129 = v118;
  *(&v129 + 1) = v21;
  *&v130 = v25;
  *(&v130 + 1) = v17;
  *&v131 = v100;
  *(&v131 + 1) = v31;
  v132 = v364;
  *&v133[0] = v18;
  *(v133 + 8) = v361;
  *(&v133[1] + 8) = v362;
  *(&v133[2] + 1) = v363;
  outlined init with copy of DOCGridLayout.LayoutCalculator.CalculationResults(v278, v279);
  specialized DOCGridLayout.LayoutCalculator.logInvalidLayoutCalculated_tooFewColumns(invalid:fallback:environment:)(v277, v276, &v129);
  memcpy(v279, v276, 0x1F8uLL);
  outlined destroy of DOCGridLayout.LayoutCalculator.CalculationResults(v279);
  v222 = v282;
  v223 = v283;
  v224 = v284;
  *(v225 + 8) = v281;
  *v225 = v20;
  *(&v225[1] + 1) = v91;
  *(v226 + 8) = v280;
  *v226 = v23;
  *(&v226[1] + 1) = *(&v127 + 1);
  v88 = &v222;
LABEL_88:
  outlined destroy of DOCGridLayout.Spec(v88);
  memcpy(v278, v285, 0x1F8uLL);
  memcpy(v12, v285, 0x1F8uLL);
  memcpy(v279, v285, 0x1F8uLL);
  outlined init with copy of DOCGridLayout.LayoutCalculator.CalculationResults(v278, v277);
  return outlined destroy of DOCGridLayout.LayoutCalculator.CalculationResults(v279);
}

uint64_t DOCGridLayout.LayoutCalculator._compute(for:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 80);
  v36 = *(result + 64);
  v37 = v3;
  v38 = *(result + 96);
  v4 = *(result + 16);
  v32 = *result;
  v33 = v4;
  v5 = *(result + 48);
  v34 = *(result + 32);
  v35 = v5;
  v6 = *&v37;
  v7 = *(&v38 + 1);
  v8 = *&v5 + *(&v5 + 1) + *(&v5 + 1) + *&v36 + *&v36;
  v9 = (*&v37 + *(result + 112) - (v7 + v7)) / (v8 + *&v37);
  if (COERCE__INT64(fabs(v9)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v9 < 9.22337204e18)
  {
    v29 = v5;
    v30 = v36;
    v10 = *(result + 152);
    v27 = *&v36 + *&v36;
    v28 = *(&v36 + 1);
    v11 = v9;
    v25 = v38;
    v26 = *(&v37 + 1);
    if (v9 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v9;
    }

    v13 = 0.0;
    outlined init with copy of DOCGridLayout.Spec(&v32, v31);
    result = UIFloorToScale();
    v15 = v14;
    if (v11 < 2)
    {
      goto LABEL_15;
    }

    v15 = v14;
    v13 = v6;
    if (v6 + v6 < v10)
    {
      goto LABEL_15;
    }

    v16 = v6 + v14 * 0.2 - v7;
    if (v16 <= 0.0)
    {
      v13 = v6;
    }

    else
    {
      v17 = v14;
      result = UIRoundToScale();
      v19 = v18;
      v14 = v17;
      v13 = fmax(v19, 2.0);
      if (v16 - (v6 - v13) * (v12 - 1) > 0.0)
      {
        v20 = v14;
        result = UIRoundToScale();
        v15 = v21;
        v14 = v20;
        if (v8 > v15)
        {
          v15 = v8;
        }

        goto LABEL_15;
      }
    }

    v15 = v14;
LABEL_15:
    v22 = v37;
    *(a2 + 64) = v36;
    *(a2 + 80) = v22;
    *(a2 + 96) = v38;
    v23 = v33;
    *a2 = v32;
    *(a2 + 16) = v23;
    v24 = v35;
    *(a2 + 32) = v34;
    *(a2 + 48) = v24;
    *(a2 + 112) = v29;
    *(a2 + 120) = v12;
    *(a2 + 128) = v26;
    *(a2 + 136) = v7;
    *(a2 + 144) = v25;
    *(a2 + 152) = v7;
    *(a2 + 160) = v28;
    *(a2 + 168) = v6;
    *(a2 + 176) = v14;
    *(a2 + 184) = v30;
    *(a2 + 192) = v14 - v27;
    *(a2 + 200) = v28;
    *(a2 + 208) = v13;
    *(a2 + 216) = v15;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

double DOCGridLayout.LayoutCalculator.computeCellHeight(forComputedLayout:traitCollection:gridItemLayoutTraits:)(uint64_t a1, char *a2, _OWORD *a3)
{
  v6 = v220;
  v234 = *MEMORY[0x277D85DE8];
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12CharacterSetVSgMd);
  MEMORY[0x28223BE20](v191, v7);
  v9 = &v178 - v8;
  v10 = type metadata accessor for CharacterSet();
  v192 = *(v10 - 8);
  v193 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v179 = &v178 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v202 = &v178 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v201 = &v178 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v203 = (&v178 - v21);
  v22 = *a1;
  v24 = *(a1 + 16);
  v23 = *(a1 + 24);
  v25 = *(a1 + 112);
  v26 = a3[9];
  v220[8] = a3[8];
  v220[9] = v26;
  v221[0] = a3[10];
  *(v221 + 9) = *(a3 + 169);
  v27 = a3[5];
  v220[4] = a3[4];
  v220[5] = v27;
  v28 = a3[7];
  v220[6] = a3[6];
  v220[7] = v28;
  v29 = a3[1];
  v220[0] = *a3;
  v220[1] = v29;
  v30 = a3[3];
  v220[2] = a3[2];
  v220[3] = v30;
  v31 = v22;
  v32 = v24;
  v33 = [a2 preferredContentSizeCategory];
  *v218 = v25;
  v197 = v31;
  v198 = v33;
  v218[1] = v31;
  v218[2] = v32;
  v199 = v32;
  v218[3] = v23;
  v218[4] = v33;
  if (one-time initialization token for isCachingDisabled != -1)
  {
LABEL_53:
    v33 = swift_once();
  }

  v194 = isCachingDisabled;
  if (!isCachingDisabled)
  {
    v35 = *(v195 + 24);
    MEMORY[0x28223BE20](v33, v34);
    *(&v178 - 2) = v218;
    v36 = *(*v35 + 160);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatVSgMd);
    v36(&v223, partial apply for closure #1 in DOCGridLayout.LayoutCalculator._cachedHeight(for:), &v178 - 4, v37);
    if ((BYTE8(v223) & 1) == 0)
    {
      v175 = *&v223;

      return v175;
    }
  }

  v38 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v39 = objc_allocWithZone(type metadata accessor for DOCItemCollectionGridCell());
  v40 = v38;
  v41 = DOCItemCollectionGridCell.init(frame:containerView:)(v38, 0.0, 0.0, 0.0, 0.0);
  v42 = [objc_allocWithZone(type metadata accessor for DOCItemCollectionCellContent(0)) init];
  v43 = [objc_allocWithZone(MEMORY[0x277D05EA0]) init];
  v44 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v42) + 0x328))(v43);
  v45 = *(v6 + 9);
  v231 = *(v6 + 8);
  v232 = v45;
  v233[0] = *(v6 + 10);
  *(v233 + 9) = *(v6 + 169);
  v46 = *(v6 + 5);
  v227 = *(v6 + 4);
  v228 = v46;
  v47 = *(v6 + 7);
  v229 = *(v6 + 6);
  v230 = v47;
  v48 = *(v6 + 1);
  v223 = *v6;
  v224 = v48;
  v49 = *(v6 + 3);
  v225 = *(v6 + 2);
  v226 = v49;
  DOCGridLayout.specIconWidth.modify(*&v225, *&v49);
  v50 = v232;
  *(v6 + 27) = v231;
  *(v6 + 28) = v50;
  *(v6 + 29) = v233[0];
  *(&v222[10] + 9) = *(v233 + 9);
  v222[4] = v227;
  v222[5] = v228;
  v222[6] = v229;
  v222[7] = v230;
  v222[0] = v223;
  v222[1] = v224;
  v222[2] = v225;
  v222[3] = v226;
  v51 = *((*v44 & *v42) + 0x2E0);
  outlined init with copy of DOCItemCollectionLayoutTraits.GridItemTraits(v220, v219);
  v51(v222);
  v52 = *((*v44 & *v41) + 0x210);
  v53 = v41;
  v188 = v42;
  v52(v42);

  v189 = v40;
  v54 = [v40 widthAnchor];
  v55 = [v54 constraintEqualToConstant_];

  [v55 setActive_];
  v56 = *((*v44 & *v53) + 0x348);
  v57 = v53;
  v56();

  v58 = *(v57 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridTitleLabel);
  v59 = type metadata accessor for IndexSet();
  v60 = v201;
  (*(*(v59 - 8) + 56))(v201, 1, 1, v59);
  v61 = *(&v220[0] + 1);
  v62 = *&v220[0];
  v63 = objc_opt_self();
  v186 = v58;
  v64 = [v63 blackColor];
  v65 = a2;
  v66 = v64;
  v187 = v57;
  v200 = [v57 effectiveUserInterfaceLayoutDirection];
  v196 = v65;
  [v65 displayScale];
  v25 = v67;
  v69 = v202;
  v68 = v203;
  *v203 = v62;
  outlined init with copy of DOCGridLayout.Spec?(v60, v69, &_s10Foundation8IndexSetVSgMd);
  v185 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  v70 = v68 + *(v185 + 20);
  v219[0] = 0x3FF0000000000000;
  v71 = v62;
  [v66 getRed:0 green:0 blue:0 alpha:v219];
  v72 = v219[0];
  v182 = type metadata accessor for DOCFastLabel.TextDrawInformation(0);
  v73 = *(v182 + 48);
  v184 = v70;
  *&v70[v73] = v72;
  UICeilToScale();
  v75 = v74;
  v183 = v66;
  v76 = [v66 colorWithAlphaComponent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9FA70;
  v78 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v79 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont);
  *(inited + 40) = v71;
  v80 = *MEMORY[0x277D740C0];
  *(inited + 64) = v79;
  *(inited + 72) = v80;
  *(inited + 104) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
  *(inited + 80) = v76;
  v190 = v71;
  v81 = v78;
  v82 = v80;
  a2 = v61;
  v83 = v76;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
  swift_arrayDestroy();
  v84 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v85 = MEMORY[0x24C1FAD20](0x630A620A61, 0xE500000000000000);
  type metadata accessor for NSAttributedStringKey(0);
  v87 = v86;
  v206 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  v207 = v87;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v89 = [v84 initWithString:v85 attributes:isa];

  v180 = v89;
  v181 = v83;
  v6 = applyHighlighting(to:indexSet:color:)(v89, v69, v83).super.isa;
  v90 = CTTypesetterCreateWithAttributedString(v6);
  v91 = MEMORY[0x277D84F90];
  *&v222[0] = MEMORY[0x277D84F90];
  v92 = [(objc_class *)v6 length];
  v93 = 0;
  v212 = a2 - 1;
  v213 = v92;
  v204 = xmmword_249B9A480;
  v209 = v9;
  v210 = v6;
  v208 = a2;
  v205 = v90;
  while (v93 < v213)
  {
    if (v91 >> 62)
    {
      if (__CocoaSet.count.getter() >= a2)
      {
        break;
      }

      v94 = __CocoaSet.count.getter();
    }

    else
    {
      v94 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v94 >= a2)
      {
        break;
      }
    }

    if (v94 == v212)
    {
      v235.location = v93;
      v235.length = 0;
      Line = CTTypesetterCreateLine(v90, v235);
      if (one-time initialization token for horizontalEllipsis != -1)
      {
        swift_once();
      }

      v95 = (*((*MEMORY[0x277D85000] & *static DOCUnicode.horizontalEllipsis) + 0x58))();
      v97 = v96;
      v98 = [(objc_class *)v6 attributesAtIndex:0 effectiveRange:0];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v99 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v100 = MEMORY[0x24C1FAD20](v95, v97);

      v101 = Dictionary._bridgeToObjectiveC()().super.isa;

      v102 = [v99 initWithString:v100 attributes:v101];

      v103 = CTLineCreateWithAttributedString(v102);
      v104 = Line;
      TruncatedLine = CTLineCreateTruncatedLine(Line, v75, kCTLineTruncationMiddle, v103);
      if (TruncatedLine)
      {
        v106 = TruncatedLine;

        v107 = 0;
        v104 = v106;
        v9 = v209;
        v6 = v210;
      }

      else
      {
        v109 = DOCUILogHandle();
        static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v110 = swift_allocObject();
        *(v110 + 16) = v204;
        *(v110 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSAttributedString);
        *(v110 + 64) = lazy protocol witness table accessor for type NSAttributedString and conformance NSObject();
        v111 = v210;
        *(v110 + 32) = v210;
        v112 = v111;
        os_log(_:dso:log:type:_:)();

        v107 = 0;
        v9 = v209;
        v6 = v111;
      }

      a2 = v208;
      v90 = v205;
    }

    else
    {
      v108 = CTTypesetterSuggestLineBreak(v90, v93, v75);
      if (__OFADD__(v93, v108))
      {
        goto LABEL_52;
      }

      v107 = v108;
      if (v93 + v108 >= v213)
      {
        v107 = CTTypesetterSuggestLineBreak(v90, v93, v75);
      }

      v236.location = v93;
      v236.length = v107;
      v104 = CTTypesetterCreateLine(v90, v236);
    }

    v113 = v104;
    MEMORY[0x24C1FB090]();
    if (*((*&v222[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v222[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v91 = *&v222[0];
    v114 = __OFADD__(v93, v107);
    v93 += v107;
    if (v114)
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }
  }

  specialized static DOCFastLabel.TextDrawInformation.lineMetrics(for:font:leadingAttachmentOffset:trailingAttachmentOffset:layoutDirection:scale:)(v91, v190, 0.0, 0.0);
  v116 = v115;
  v118 = v117;
  v119 = *MEMORY[0x277D768C8];
  v120 = *(MEMORY[0x277D768C8] + 16);
  v121 = *(MEMORY[0x277D768C8] + 24);
  v216 = *(MEMORY[0x277D768C8] + 8);
  v217 = v119;
  v214 = v121;
  v215 = v120;
  if (one-time initialization token for charsWithSpecialOutset != -1)
  {
    swift_once();
  }

  v122 = __swift_project_value_buffer(v191, static DOCFastLabel.TextDrawInformation.charsWithSpecialOutset);
  outlined init with copy of DOCGridLayout.Spec?(v122, v9, &_s10Foundation12CharacterSetVSgMd);
  v123 = v192;
  v124 = v193;
  v125 = (*(v192 + 48))(v9, 1, v193);
  v126 = v196;
  if (v125 == 1)
  {
    outlined destroy of CharacterSet?(v9, &_s10Foundation12CharacterSetVSgMd);
    v127 = DOCUILogHandle();
    static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    v128 = v179;
    (*(v123 + 32))(v179, v9, v124);
    *&v222[0] = 0x630A620A61;
    *(&v222[0] + 1) = 0xE500000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v129 = v123;
    StringProtocol.rangeOfCharacter(from:options:range:)();
    v131 = v130;
    (*(v129 + 8))(v128, v124);
    if ((v131 & 1) == 0)
    {
      CTFontGetLanguageAwareOutsets();
      v216 = -v216;
      v217 = -v217;
      v214 = -v214;
      v215 = -v215;
    }
  }

  v132 = *(v116 + 16);
  v133 = MEMORY[0x277D84F90];
  if (v132)
  {
    *&v222[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v132, 0);
    v133 = *&v222[0];
    v134 = v116 + 56;
    do
    {
      Height = CGRectGetHeight(*(v134 - 24));
      *&v222[0] = v133;
      v137 = *(v133 + 16);
      v136 = *(v133 + 24);
      v138 = v137 + 1;
      if (v137 >= v136 >> 1)
      {
        v139 = Height;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v136 > 1), v137 + 1, 1);
        Height = v139;
        v133 = *&v222[0];
      }

      *(v133 + 16) = v138;
      *(v133 + 8 * v137 + 32) = Height;
      v134 += 32;
      --v132;
    }

    while (v132);
    v126 = v196;
  }

  else
  {
    v138 = *(MEMORY[0x277D84F90] + 16);
    if (!v138)
    {
      v142 = 0.0;
      v140 = v197;
      goto LABEL_46;
    }
  }

  v140 = v197;
  if (v138 > 3)
  {
    v141 = v138 & 0xFFFFFFFFFFFFFFFCLL;
    v143 = (v133 + 48);
    v142 = 0.0;
    v144 = v138 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v142 = v142 + *(v143 - 2) + *(v143 - 1) + *v143 + v143[1];
      v143 += 4;
      v144 -= 4;
    }

    while (v144);
    if (v138 == v141)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v141 = 0;
    v142 = 0.0;
  }

  v145 = v138 - v141;
  v146 = 8 * v141 + 32;
  do
  {
    v142 = v142 + *(v133 + v146);
    v146 += 8;
    --v145;
  }

  while (v145);
LABEL_46:
  v148 = v185;
  v147 = v186;

  UIEdgeInsetsInsetRect(0.0, 0.0, v118, v142, v217, v216);
  UIRectIntegralWithScale();
  v150 = v149;
  v152 = v151;
  v154 = v153;
  v156 = v155;

  outlined destroy of CharacterSet?(v201, &_s10Foundation8IndexSetVSgMd);
  v157 = v182;
  v158 = v184;
  outlined init with take of IndexSet?(v202, &v184[*(v182 + 36)]);
  *v158 = 0;
  *(v158 + 1) = 0;
  *(v158 + 2) = v118;
  *(v158 + 3) = v142;
  *(v158 + 4) = v150;
  *(v158 + 5) = v152;
  *(v158 + 6) = v154;
  *(v158 + 7) = v156;
  *(v158 + 9) = v91;
  *(v158 + 10) = v116;
  *&v158[v157[13]] = v200;
  v159 = &v158[v157[10]];
  *(v159 + 1) = 0u;
  *(v159 + 2) = 0u;
  *v159 = 0u;
  v160 = &v158[v157[11]];
  *(v160 + 1) = 0u;
  *(v160 + 2) = 0u;
  *v160 = 0u;
  *(v158 + 8) = v210;
  v161 = v203;
  (*(*(v148 - 8) + 56))(v203, 0, 1, v148);
  (*((*MEMORY[0x277D85000] & *v147) + 0x70))(v161);

  v162 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_subtitleLabel;
  v163 = v187;
  v164 = *&v187[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_subtitleLabel];
  v165 = MEMORY[0x24C1FAD20](6621796, 0xE300000000000000);
  [v164 setText_];

  v166 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_secondSubtitleLabel;
  v167 = *&v163[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_secondSubtitleLabel];
  v168 = MEMORY[0x24C1FAD20](6621796, 0xE300000000000000);
  [v167 setText_];

  [*&v163[v162] invalidateIntrinsicContentSize];
  [*&v163[v166] invalidateIntrinsicContentSize];
  [objc_opt_self() separatorThicknessForTraitCollection_];
  v170 = v169;
  v171 = v189;
  v172 = [v189 systemLayoutSizeFittingSize_];
  v175 = v170 + v174;
  if (v194)
  {
  }

  else
  {
    v176 = *(v195 + 24);
    MEMORY[0x28223BE20](v172, v173);
    *(&v178 - 2) = v218;
    *(&v178 - 1) = v175;
    (*(*v176 + 168))(partial apply for closure #1 in DOCGridLayout.LayoutCalculator._addToCache(height:for:));
  }

  return v175;
}

uint64_t closure #1 in DOCGridLayout.LayoutCalculator.clearCaches()(unint64_t *a1)
{
  v2 = MEMORY[0x277D84F90];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables13DOCGridLayoutV0G10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC24HeightDeterminingFactorsV_12CoreGraphics7CGFloatVTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  a1[1] = v3;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables13DOCGridLayoutV0G10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesV_AETt0g5Tf4g_n(v2);

  *a1 = v4;
  return result;
}

double closure #1 in DOCGridLayout.LayoutCalculator._cachedLayout(for:spec:canUseCache:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 224 * v5);
    v8 = v7[1];
    v29 = *v7;
    v30 = v8;
    v9 = v7[5];
    v11 = v7[2];
    v10 = v7[3];
    v33 = v7[4];
    v34 = v9;
    v31 = v11;
    v32 = v10;
    v12 = v7[6];
    v13 = v7[7];
    v14 = v7[9];
    v37 = v7[8];
    v38 = v14;
    v35 = v12;
    v36 = v13;
    v15 = v7[10];
    v16 = v7[11];
    v17 = v7[13];
    v41 = v7[12];
    v42 = v17;
    v39 = v15;
    v40 = v16;
    memmove(a3, v7, 0xE0uLL);
    DOCGridLayout.specIconWidth.modify(v18, v19);
    outlined init with copy of DOCGridLayout(&v29, &v28);
  }

  else
  {
    _s26DocumentManagerExecutables13DOCGridLayoutVSgWOi0_(&v29);
    v21 = v40;
    a3[10] = v39;
    a3[11] = v21;
    v22 = v42;
    a3[12] = v41;
    a3[13] = v22;
    v23 = v36;
    a3[6] = v35;
    a3[7] = v23;
    v24 = v38;
    a3[8] = v37;
    a3[9] = v24;
    v25 = v32;
    a3[2] = v31;
    a3[3] = v25;
    v26 = v34;
    a3[4] = v33;
    a3[5] = v26;
    result = *&v29;
    v27 = v30;
    *a3 = v29;
    a3[1] = v27;
  }

  return result;
}

uint64_t closure #1 in DOCGridLayout.LayoutCalculator._addToCache(_:)(void *a1, uint64_t a2, _OWORD *a3)
{
  outlined init with copy of DOCGridLayout.LayoutCalculator.CalculationVariables(a2, v8);
  outlined init with copy of DOCGridLayout(a3, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[0] = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, a2, isUniquelyReferenced_nonNull_native);
  result = outlined destroy of DOCGridLayout.LayoutCalculator.CalculationVariables(a2);
  *a1 = v8[0];
  return result;
}

uint64_t DOCGridLayout.LayoutCalculator.HeightDeterminingFactors.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x24C1FCC00](*&v1);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  MEMORY[0x24C1FCBD0](*(v0 + 24));
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCGridLayout.LayoutCalculator.HeightDeterminingFactors()
{
  Hasher.init(_seed:)();
  DOCGridLayout.LayoutCalculator.HeightDeterminingFactors.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCGridLayout.LayoutCalculator.HeightDeterminingFactors()
{
  Hasher.init(_seed:)();
  DOCGridLayout.LayoutCalculator.HeightDeterminingFactors.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCGridLayout.LayoutCalculator.HeightDeterminingFactors(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return specialized static DOCGridLayout.LayoutCalculator.HeightDeterminingFactors.== infix(_:_:)(v5, v7) & 1;
}

uint64_t DOCGridLayout.LayoutCalculator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DefaultStringInterpolation.appendInterpolation(value:)(_OWORD *a1)
{
  v1 = a1[11];
  v2 = a1[9];
  v27 = a1[10];
  v28 = v1;
  v3 = a1[11];
  v4 = a1[13];
  v29 = a1[12];
  v30 = v4;
  v5 = a1[7];
  v6 = a1[5];
  v23 = a1[6];
  v24 = v5;
  v7 = a1[7];
  v8 = a1[9];
  v25 = a1[8];
  v26 = v8;
  v9 = a1[3];
  v10 = a1[1];
  v19 = a1[2];
  v20 = v9;
  v11 = a1[3];
  v12 = a1[5];
  v21 = a1[4];
  v22 = v12;
  v13 = a1[1];
  v18[0] = *a1;
  v18[1] = v13;
  v17[24] = v27;
  v17[25] = v3;
  v14 = a1[13];
  v17[26] = v29;
  v17[27] = v14;
  v17[20] = v23;
  v17[21] = v7;
  v17[22] = v25;
  v17[23] = v2;
  v17[16] = v19;
  v17[17] = v11;
  v17[18] = v21;
  v17[19] = v6;
  v17[14] = v18[0];
  v17[15] = v10;
  outlined init with copy of DOCGridLayout(v18, v17);
  v15 = String.init<A>(reflecting:)();
  MEMORY[0x24C1FAEA0](v15);
}

{
  v1 = a1[3];
  v2 = a1[5];
  v14 = a1[4];
  v15 = v2;
  v3 = a1[5];
  v16 = a1[6];
  v4 = a1[1];
  v11[0] = *a1;
  v11[1] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v12 = a1[2];
  v13 = v5;
  v10[11] = v14;
  v10[12] = v3;
  v10[13] = a1[6];
  v10[7] = v7;
  v10[8] = v6;
  v10[9] = v12;
  v10[10] = v1;
  outlined init with copy of DOCGridLayout.Spec(v11, v10);
  v8 = String.init<A>(reflecting:)();
  MEMORY[0x24C1FAEA0](v8);
}

uint64_t DefaultStringInterpolation.appendInterpolation(value:)(__int128 *a1)
{
  v10[0] = *a1;
  v1 = a1[4];
  v10[3] = a1[3];
  v10[4] = v1;
  v2 = a1[6];
  v11 = a1[5];
  v12 = v2;
  v3 = a1[2];
  v10[1] = a1[1];
  v10[2] = v3;
  if (*v10 >= DOCGridLayout.Environment.thresholdForAllowingMoreThanOneColumn.getter() && (v4 = qword_249B9FE38[SBYTE8(v11)], result = minColumnsIfRegularSizeSetting #1 () in DOCGridLayout.Environment.preferredMinColumns.getter(v10, *v10), __OFADD__(result, v4)))
  {
    __break(1u);
  }

  else
  {
    _StringGuts.grow(_:)(25);

    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x24C1FAEA0](v6);

    MEMORY[0x24C1FAEA0](8236, 0xE200000000000000);
    v7 = String.init<A>(reflecting:)();
    v9 = v8;

    MEMORY[0x24C1FAEA0](v7, v9);

    MEMORY[0x24C1FAEA0](0xD000000000000015, 0x8000000249BC8110);
  }

  return result;
}

unint64_t one-time initialization function for default(uint64_t a1, void *a2)
{
  type metadata accessor for DOCGridLayout.LayoutCalculator();
  v3 = swift_allocObject();
  v3[2] = 0x3FC999999999999ALL;
  v4 = MEMORY[0x277D84F90];
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables13DOCGridLayoutV0G10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesV_AETt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables13DOCGridLayoutV0G10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC24HeightDeterminingFactorsV_12CoreGraphics7CGFloatVTt0g5Tf4g_n(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18DOCThreadSafeStateCyAA13DOCGridLayoutV0H10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC0F0VGMd);
  swift_allocObject();
  v3[3] = specialized DOCThreadSafeState.init(_:)(v5, v6);
  v3[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables13DOCGridLayoutV0G10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesV_AETt0g5Tf4g_n(v4);
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables13DOCGridLayoutV0G10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC24HeightDeterminingFactorsV_12CoreGraphics7CGFloatVTt0g5Tf4g_n(v4);
  v3[5] = result;
  *a2 = v3;
  return result;
}

uint64_t static DOCGridLayout.TestSupport.whileUsingUnitTestCalculator<A>(_:)(void (*a1)(uint64_t))
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = static DOCGridLayout.LayoutCalculator.default;
  v3 = one-time initialization token for calculatorForUnitTests;

  if (v3 != -1)
  {
    swift_once();
  }

  static DOCGridLayout.LayoutCalculator.default = static DOCGridLayout.TestSupport.calculatorForUnitTests;

  a1(v4);
  static DOCGridLayout.LayoutCalculator.default = v2;
}

double static DOCGridLayout.TestSupport.cachedLayout(for:spec:)@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 8);
  v8 = a2[5];
  v52[4] = a2[4];
  v52[5] = v8;
  v52[6] = a2[6];
  v9 = a2[1];
  v52[0] = *a2;
  v52[1] = v9;
  v10 = a2[3];
  v52[2] = a2[2];
  v52[3] = v10;
  if (one-time initialization token for calculatorForUnitTests != -1)
  {
    v30 = a2;
    v33 = v5;
    v34 = v4;
    v32 = v6;
    swift_once();
    v6 = v32;
    v5 = v33;
    v4 = v34;
    a2 = v30;
  }

  v11 = static DOCGridLayout.TestSupport.calculatorForUnitTests;
  v12 = a2[5];
  v36[4] = a2[4];
  v36[5] = v12;
  v13 = a2[1];
  v36[0] = *a2;
  v36[1] = v13;
  v14 = a2[3];
  v36[2] = a2[2];
  v36[3] = v14;
  v36[6] = a2[6];
  v36[7] = v4;
  v36[8] = v5;
  v36[9] = v6;
  v37 = v7;
  _s26DocumentManagerExecutables13DOCGridLayoutVSgWOi0_(v53);

  v15 = outlined init with copy of DOCGridLayout.Spec(v52, &v38);
  if (one-time initialization token for isCachingDisabled != -1)
  {
    v15 = swift_once();
  }

  if (isCachingDisabled)
  {

    outlined destroy of DOCGridLayout.LayoutCalculator.CalculationVariables(v36);
    v48 = v53[10];
    v49 = v53[11];
    v50 = v53[12];
    v51 = v53[13];
    v44 = v53[6];
    v45 = v53[7];
    v46 = v53[8];
    v47 = v53[9];
    v40 = v53[2];
    v41 = v53[3];
    v42 = v53[4];
    v43 = v53[5];
    v17 = v53[0];
    v18 = v53[1];
  }

  else
  {
    v19 = v11[3];
    MEMORY[0x28223BE20](v15, v16);
    v31[2] = v36;
    v20 = *(*v19 + 160);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables13DOCGridLayoutVSgMd);
    v20(v35, partial apply for closure #1 in DOCGridLayout.LayoutCalculator._cachedLayout(for:spec:canUseCache:), v31, v21);
    outlined destroy of DOCGridLayout.LayoutCalculator.CalculationVariables(v36);

    v48 = v35[10];
    v49 = v35[11];
    v50 = v35[12];
    v51 = v35[13];
    v44 = v35[6];
    v45 = v35[7];
    v46 = v35[8];
    v47 = v35[9];
    v40 = v35[2];
    v41 = v35[3];
    v42 = v35[4];
    v43 = v35[5];
    v17 = v35[0];
    v18 = v35[1];
  }

  v38 = v17;
  v39 = v18;
  v22 = v49;
  a3[10] = v48;
  a3[11] = v22;
  v23 = v51;
  a3[12] = v50;
  a3[13] = v23;
  v24 = v45;
  a3[6] = v44;
  a3[7] = v24;
  v25 = v47;
  a3[8] = v46;
  a3[9] = v25;
  v26 = v41;
  a3[2] = v40;
  a3[3] = v26;
  v27 = v43;
  a3[4] = v42;
  a3[5] = v27;
  result = *&v38;
  v29 = v39;
  *a3 = v38;
  a3[1] = v29;
  return result;
}

uint64_t static DOCGridLayout.TestSupport.clearCaches()()
{
  if (one-time initialization token for calculatorForUnitTests != -1)
  {
    swift_once();
  }

  v0 = *(**(static DOCGridLayout.TestSupport.calculatorForUnitTests + 3) + 168);

  v0(closure #1 in DOCGridLayout.LayoutCalculator.clearCaches(), 0, MEMORY[0x277D84F78] + 8);
}

void one-time initialization function for isCachingDisabled()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x24C1FAD20](0xD00000000000001CLL, 0x8000000249BC81E0);
  v2 = [v0 BOOLForKey_];

  isCachingDisabled = v2;
}

void specialized static DOCGridLayout.logDebuggableIssue(_:)(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(24);

  v17[0] = 0xD000000000000016;
  v17[1] = 0x8000000249BC8290;
  MEMORY[0x24C1FAEA0](a1, a2);
  if (DOCIsRunningUnitTests()())
  {
    v4 = MEMORY[0x24C1FAD20](0xD000000000000012, 0x8000000249BC82D0);
    v5 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
    v6 = v4;
    v7 = MEMORY[0x24C1FAD20](0xD000000000000016, 0x8000000249BC8290);
    v8 = [v5 initWithName:v6 reason:v7 userInfo:0];

    [v8 raise];
  }

  v9 = [objc_opt_self() standardUserDefaults];
  v10 = MEMORY[0x24C1FAD20](0xD00000000000001DLL, 0x8000000249BC82B0);
  [v9 BOOLForKey_];

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.UI);

  oslog = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17[0] = v14;
    *v13 = 136315138;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BC8290, v17);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_2493AC000, oslog, v12, "%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  else
  {
  }
}

uint64_t specialized static DOCGridLayout.logInvalidLayoutSpec_unableToDetermineBestMetrics(environment:fallback:)()
{
  _StringGuts.grow(_:)(121);
  MEMORY[0x24C1FAEA0](0xD000000000000055, 0x8000000249BC8200);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](0xD000000000000020, 0x8000000249BC8260);
  _print_unlocked<A, B>(_:_:)();
  specialized static DOCGridLayout.logDebuggableIssue(_:)(0, 0xE000000000000000);
}

uint64_t specialized DOCGridLayout.LayoutCalculator.logInvalidLayoutCalculated_tooFewColumns(invalid:fallback:environment:)(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v3 = a1[1];
  v43 = *a1;
  v44 = v3;
  v45 = a1[2];
  v42 = *(a1 + 88);
  v4 = a1[7];
  v5 = a1[8];
  v6 = a1[10];
  v54 = a1[9];
  v55 = v6;
  v52 = v4;
  v53 = v5;
  v7 = a1[11];
  v8 = a1[13];
  v57 = a1[12];
  v58 = v8;
  v56 = v7;
  v9 = a1[16];
  v46 = a1[15];
  v47 = v9;
  v10 = a1[17];
  v11 = a1[18];
  v12 = a1[20];
  v50 = a1[19];
  v51 = v12;
  v48 = v10;
  v49 = v11;
  v13 = a2[1];
  v60 = *a2;
  v61 = v13;
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[4];
  v17 = a2[6];
  v18 = a2[7];
  v65 = a2[5];
  v66 = v17;
  v63 = v15;
  v64 = v16;
  v62 = v14;
  v19 = a2[8];
  v20 = a2[9];
  v67 = v18;
  v68 = v19;
  v21 = a2[10];
  v22 = a2[12];
  v23 = a2[13];
  v71 = a2[11];
  v72 = v22;
  v69 = v20;
  v70 = v21;
  v24 = a2[14];
  v25 = a2[16];
  v26 = a2[17];
  v75 = a2[15];
  v76 = v25;
  v73 = v23;
  v74 = v24;
  v27 = a2[18];
  v28 = a2[20];
  v79 = a2[19];
  v80 = v28;
  v77 = v26;
  v78 = v27;
  v29 = a3[5];
  v39[4] = a3[4];
  v40 = v29;
  v41 = a3[6];
  v30 = a3[1];
  v39[0] = *a3;
  v39[1] = v30;
  v31 = a3[3];
  v39[2] = a3[2];
  v39[3] = v31;
  v59 = *(a1 + 28);
  v32 = *v39;
  if (*v39 >= DOCGridLayout.Environment.thresholdForAllowingMoreThanOneColumn.getter() && (v33 = qword_249B9FE38[SBYTE8(v40)], result = minColumnsIfRegularSizeSetting #1 () in DOCGridLayout.Environment.preferredMinColumns.getter(v39, *v39), __OFADD__(result, v33)))
  {
    __break(1u);
  }

  else
  {
    _StringGuts.grow(_:)(536);
    MEMORY[0x24C1FAEA0](0xD00000000000004ELL, 0x8000000249BC8390);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x24C1FAEA0](v35);

    MEMORY[0x24C1FAEA0](0x202020202020200ALL, 0xEF3D6E696D202D20);
    if (v32 < DOCGridLayout.Environment.thresholdForAllowingMoreThanOneColumn.getter() || (v36 = qword_249B9FE38[SBYTE8(v40)], result = minColumnsIfRegularSizeSetting #1 () in DOCGridLayout.Environment.preferredMinColumns.getter(v39, v32), !__OFADD__(result, v36)))
    {
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x24C1FAEA0](v37);

      MEMORY[0x24C1FAEA0](0x20646C756F772820, 0xEB00000000206562);
      v38 = Double.description.getter();
      MEMORY[0x24C1FAEA0](v38);

      MEMORY[0x24C1FAEA0](0xD000000000000087, 0x8000000249BC83E0);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x24C1FAEA0](0xD000000000000062, 0x8000000249BC8470);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x24C1FAEA0](0xD000000000000015, 0x8000000249BC84E0);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x24C1FAEA0](0xD000000000000062, 0x8000000249BC8500);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x24C1FAEA0](0xD000000000000015, 0x8000000249BC84E0);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x24C1FAEA0](0xD00000000000002BLL, 0x8000000249BC8570);
      specialized static DOCGridLayout.logDebuggableIssue(_:)(0, 0xE000000000000000);
    }
  }

  __break(1u);
  return result;
}

BOOL specialized static DOCGridLayout.LayoutCalculator.CalculationVariables.== infix(_:_:)(float64x2_t *a1, float64x2_t *a2)
{
  v4 = a1[3];
  v5 = a1[5];
  v43 = a1[4];
  v44 = v5;
  v6 = a1[5];
  v45 = a1[6];
  v7 = a1[1];
  v40[0] = *a1;
  v40[1] = v7;
  v8 = a1[3];
  v10 = *a1;
  v9 = a1[1];
  v41 = a1[2];
  v42 = v8;
  v11 = a2[3];
  v12 = a2[5];
  v49 = a2[4];
  v50 = v12;
  v13 = a2[5];
  v51 = a2[6];
  v14 = a2[1];
  v46[0] = *a2;
  v46[1] = v14;
  v15 = a2[3];
  v17 = *a2;
  v16 = a2[1];
  v47 = a2[2];
  v48 = v15;
  v37 = v43;
  v38 = v6;
  v39 = a1[6];
  v33 = v10;
  v34 = v9;
  v19 = a1[9].f64[0];
  v18 = a1[9].f64[1];
  v35 = v41;
  v36 = v4;
  v20 = a1[10].f64[0];
  v30 = v49;
  v31 = v13;
  v32 = a2[6];
  v22 = a2[9].f64[0];
  v21 = a2[9].f64[1];
  v26 = v17;
  v27 = v16;
  v23 = a2[10].f64[0];
  v28 = v47;
  v29 = v11;
  outlined init with copy of DOCGridLayout.Spec(v40, v53);
  outlined init with copy of DOCGridLayout.Spec(v46, v53);
  v24 = specialized static DOCGridLayout.Spec.== infix(_:_:)(&v33, &v26);
  v52[4] = v30;
  v52[5] = v31;
  v52[6] = v32;
  v52[0] = v26;
  v52[1] = v27;
  v52[2] = v28;
  v52[3] = v29;
  outlined destroy of DOCGridLayout.Spec(v52);
  v53[4] = v37;
  v53[5] = v38;
  v53[6] = v39;
  v53[0] = v33;
  v53[1] = v34;
  v53[2] = v35;
  v53[3] = v36;
  outlined destroy of DOCGridLayout.Spec(v53);
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[7], a2[7]), vceqq_f64(a1[8], a2[8])))) & 1) != 0 && v19 == v22 && v24 && v18 == v21)
  {
    return v20 == v23;
  }

  return result;
}

uint64_t specialized static DOCGridLayout.LayoutCalculator.HeightDeterminingFactors.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_17;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
LABEL_17:
      v19 = 0;
      return v19 & 1;
    }
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    goto LABEL_17;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v19 & 1;
}

BOOL specialized static DOCGridLayout.== infix(_:_:)(__int128 *a1, uint64_t a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v62 = a1[4];
  v63 = v3;
  v4 = a1[1];
  v59[0] = *a1;
  v59[1] = v4;
  v5 = a1[3];
  v6 = *a1;
  v7 = a1[1];
  v60 = a1[2];
  v61 = v5;
  v5.f64[0] = *(a1 + 14);
  v8 = *(a1 + 15);
  v42 = *(a1 + 152);
  v43 = *(a1 + 136);
  v41 = *(a1 + 21);
  v9 = *(a1 + 23);
  v40 = *(a1 + 22);
  v11 = *(a1 + 24);
  v10 = *(a1 + 25);
  v33 = *(a1 + 27);
  v34 = *(a1 + 26);
  v5.f64[1] = *(a1 + 16);
  v44 = v5;
  v12 = *(a2 + 64);
  v13 = *(a2 + 32);
  v66 = *(a2 + 48);
  v67 = v12;
  v14 = *(a2 + 64);
  v15 = *(a2 + 96);
  v68 = *(a2 + 80);
  v69 = v15;
  v16 = *a2;
  v17 = *(a2 + 16);
  v18 = a1[5];
  v64 = a1[6];
  v65[0] = v16;
  v19 = *a2;
  v20 = *(a2 + 32);
  v65[1] = *(a2 + 16);
  v65[2] = v20;
  v16.f64[0] = *(a2 + 112);
  v21 = *(a2 + 120);
  v37 = *(a2 + 152);
  v38 = *(a2 + 136);
  v55 = v2;
  v56 = v62;
  v22 = a1[6];
  v57 = v18;
  v58 = v22;
  v36 = *(a2 + 168);
  v23 = *(a2 + 184);
  v35 = *(a2 + 176);
  v53 = v7;
  v54 = v60;
  v24 = *(a2 + 192);
  v25 = *(a2 + 200);
  v49 = v14;
  v50 = v68;
  v51 = *(a2 + 96);
  v52 = v6;
  v26 = *(a2 + 208);
  v27 = *(a2 + 216);
  v45 = v19;
  v46 = v17;
  v16.f64[1] = *(a2 + 128);
  v39 = v16;
  v47 = v13;
  v48 = v66;
  outlined init with copy of DOCGridLayout.Spec(v59, v71);
  outlined init with copy of DOCGridLayout.Spec(v65, v71);
  v28 = specialized static DOCGridLayout.Spec.== infix(_:_:)(&v52, &v45);
  v70[4] = v49;
  v70[5] = v50;
  v70[6] = v51;
  v70[0] = v45;
  v70[1] = v46;
  v70[2] = v47;
  v70[3] = v48;
  outlined destroy of DOCGridLayout.Spec(v70);
  v71[4] = v56;
  v71[5] = v57;
  v71[6] = v58;
  v71[0] = v52;
  v71[1] = v53;
  v71[2] = v54;
  v71[3] = v55;
  outlined destroy of DOCGridLayout.Spec(v71);
  result = 0;
  if (v28)
  {
    v30.f64[0] = v41;
    v30.f64[1] = v40;
    v31.f64[0] = v36;
    v31.f64[1] = v35;
    if (vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v44, v39), vceqq_f64(v43, v38)), vuzp1q_s32(vceqq_f64(v42, v37), vceqq_f64(v30, v31))), xmmword_249B9FA80)) == 255 && v9 == v23 && v11 == v24 && v8 == v21)
    {
      v32 = v10 == v25;
      if (v34 != v26)
      {
        v32 = 0;
      }

      return v33 == v27 && v32;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait()
{
  result = lazy protocol witness table cache variable for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait;
  if (!lazy protocol witness table cache variable for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait);
  }

  return result;
}

double _s26DocumentManagerExecutables13DOCGridLayoutVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
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

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCGridLayout(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t storeEnumTagSinglePayload for DOCGridLayout(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCGridLayout.LayoutCalculator.HeightDeterminingFactors(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DOCGridLayout.LayoutCalculator.HeightDeterminingFactors(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DOCGridLayout.LayoutCalculator.State(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for DOCGridLayout.LayoutCalculator.State(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
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
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCGridLayout.LayoutCalculator.CalculationVariables(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t storeEnumTagSinglePayload for DOCGridLayout.LayoutCalculator.CalculationVariables(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCGridLayout.LayoutCalculator.CalculationResults(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 504))
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

uint64_t storeEnumTagSinglePayload for DOCGridLayout.LayoutCalculator.CalculationResults(uint64_t result, int a2, int a3)
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
      *(result + 504) = 1;
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

    *(result + 504) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCGridLayout.LayoutCalculator.CalculationVariables and conformance DOCGridLayout.LayoutCalculator.CalculationVariables()
{
  result = lazy protocol witness table cache variable for type DOCGridLayout.LayoutCalculator.CalculationVariables and conformance DOCGridLayout.LayoutCalculator.CalculationVariables;
  if (!lazy protocol witness table cache variable for type DOCGridLayout.LayoutCalculator.CalculationVariables and conformance DOCGridLayout.LayoutCalculator.CalculationVariables)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCGridLayout.LayoutCalculator.CalculationVariables and conformance DOCGridLayout.LayoutCalculator.CalculationVariables);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCGridLayout.LayoutCalculator.HeightDeterminingFactors and conformance DOCGridLayout.LayoutCalculator.HeightDeterminingFactors()
{
  result = lazy protocol witness table cache variable for type DOCGridLayout.LayoutCalculator.HeightDeterminingFactors and conformance DOCGridLayout.LayoutCalculator.HeightDeterminingFactors;
  if (!lazy protocol witness table cache variable for type DOCGridLayout.LayoutCalculator.HeightDeterminingFactors and conformance DOCGridLayout.LayoutCalculator.HeightDeterminingFactors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCGridLayout.LayoutCalculator.HeightDeterminingFactors and conformance DOCGridLayout.LayoutCalculator.HeightDeterminingFactors);
  }

  return result;
}

unint64_t partial apply for closure #1 in DOCGridLayout.LayoutCalculator._cachedHeight(for:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(result + 8);
  if (*(v5 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(*(v3 + 16)), (v6 & 1) != 0))
  {
    v7 = 0;
    v8 = *(*(v5 + 56) + 8 * result);
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  *a2 = v8;
  *(a2 + 8) = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey()
{
  result = lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey;
  if (!lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey)
  {
    type metadata accessor for NSAttributedStringKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey);
  }

  return result;
}

uint64_t outlined init with take of IndexSet?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in DOCGridLayout.LayoutCalculator._addToCache(height:for:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a1 + 8);
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, isUniquelyReferenced_nonNull_native, v4);
  *(a1 + 8) = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSAttributedString and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for NSAttributedString);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject);
  }

  return result;
}

uint64_t DOCFileProviderSyncStateObserverCache.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t *DOCFileProviderSyncStateObserverCache.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static DOCFileProviderSyncStateObserverCache.shared;
}

uint64_t static DOCFileProviderSyncStateObserverCache.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static DOCFileProviderSyncStateObserverCache.shared.setter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCFileProviderSyncStateObserverCache.shared = a1;
}

uint64_t (*static DOCFileProviderSyncStateObserverCache.shared.modify())()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

uint64_t key path getter for static DOCFileProviderSyncStateObserverCache.shared : DOCFileProviderSyncStateObserverCache.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static DOCFileProviderSyncStateObserverCache.shared;
}

uint64_t key path setter for static DOCFileProviderSyncStateObserverCache.shared : DOCFileProviderSyncStateObserverCache.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for shared;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCFileProviderSyncStateObserverCache.shared = v1;
}

uint64_t DOCFileProviderSyncStateObserverCache.observer(for:)(void *a1)
{
  v2 = v1;
  v4 = [a1 identifier];
  swift_beginAccess();
  v5 = *(v1 + 16);
  if (!*(v5 + 16))
  {

LABEL_6:
    type metadata accessor for DOCFileProviderSyncStateObserver();
    swift_allocObject();
    v9 = a1;
    v8 = DOCFileProviderSyncStateObserver.init(for:)(v9);
    v10 = [v9 identifier];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, v10, isUniquelyReferenced_nonNull_native, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));

    *(v2 + 16) = v13;
    swift_endAccess();
    return v8;
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if ((v7 & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = *(*(v5 + 56) + 8 * v6);

  return v8;
}

uint64_t DOCFileProviderSyncStateObserverCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DOCFileProviderSyncStateObserverCache.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 224 * v9;

    return outlined assign with take of DOCGridLayout(a1, v20);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
    return outlined init with copy of DOCGridLayout.LayoutCalculator.CalculationVariables(a2, v22);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(void *a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_12;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    specialized _NativeDictionary.copy()();
    result = v17;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a3;
  }

  else
  {
    v20 = a1[1];
    v23 = a1[2];
    v24 = v20;
    v22 = a1[4];
    specialized _NativeDictionary._insert(at:key:value:)(result, a1, v19, a3);
    outlined init with copy of UIFontTextStyle(&v24, &v21, type metadata accessor for UIFontTextStyle);
    outlined init with copy of UIFontTextStyle(&v23, &v21, type metadata accessor for UIFontTextStyle);
    return outlined init with copy of UIFontTextStyle(&v22, &v21, type metadata accessor for UIContentSizeCategory);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, a1, v21);

    return outlined copy of ColumnType(a2, a3);
  }

  return result;
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, void *a3, char a4, double a5, double a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = v13[3];
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      v22 = v14;
      specialized _NativeDictionary.copy()();
      v14 = v22;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v24 = *v7;
  if (v20)
  {
    v25 = v24[7] + 32 * v14;
    v26 = *(v25 + 16);
    *v25 = a5;
    *(v25 + 8) = a6;
    *(v25 + 16) = a1;
    *(v25 + 24) = a2 & 1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v14, a3, a1, a2 & 1, v24, a5, a6);

    v27 = a3;
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      updated = type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo();
      return outlined assign with take of DOCDebugUIScenarioManager.LoadedScenario(a1, v22 + *(*(updated - 8) + 72) * v15, type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v19 & 1) != (v26 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v25;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for DOCHashableNode();
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = type metadata accessor for URL();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v10, a2, a1, v16);
}

{
  v4 = v3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
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
  *(v21[7] + 8 * v15) = a1;
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for DOCSourceType(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for UIUserInterfaceSizeClass(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario();
      return outlined assign with take of DOCDebugUIScenarioManager.LoadedScenario(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v19 & 1) != (v26 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v25;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 1);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *v5;
    if (v15)
    {
LABEL_8:
      v18 = v17[7];
      v19 = type metadata accessor for RestorableSettings(0);
      return outlined assign with take of DOCDebugUIScenarioManager.LoadedScenario(a1, v18 + *(*(v19 - 8) + 72) * v11, type metadata accessor for RestorableSettings);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a4 & 1);
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 1);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *v5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3 & 1, a1, v17);

  return a2;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
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
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (*(v23 + 56) + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return outlined consume of DOCItemFileTypeGroupCategory(v25, v26);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a3, a4, a1, a2, v23);
  }
}

{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
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
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = *(v23 + 56) + 40 * v13;

    return outlined assign with take of DOCCollectionSection(a1, v24);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v13, a2, a3, a4, a1, v23);
  }
}

{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a3, a4, a1, a2, v23);
  }
}

{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
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
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (*(v23 + 56) + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a3, a4, a1, a2, v23);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return outlined assign with take of DOCCollectionSection(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);

    return outlined copy of DOCItemFileTypeGroupCategory(a2, a3);
  }
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);

    return outlined copy of DOCItemSharedByGroupCategory(a2, a3);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
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
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = *(v23 + 56) + 40 * v13;

    return outlined assign with take of DOCCollectionSection(a1, v24);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a2, a3, a4, a1, v23);

    return outlined copy of DOCItemDateGroupCategory(a2, a3, a4);
  }
}