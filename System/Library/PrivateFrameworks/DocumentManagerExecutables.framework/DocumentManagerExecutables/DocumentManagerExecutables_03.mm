uint64_t sub_2493E4320(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x268);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493E4390()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2493E446C()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2493E44AC()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493E4514()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_2493E454C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentOffset];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_2493E4594()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493E45CC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2493E4624@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_2493E46BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493E46FC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2493E475C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2493E47B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2493E481C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493E4868()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493E48A8()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493E48E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493E4920()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493E4960@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493E49BC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);

  return v4(v2, v3);
}

uint64_t sub_2493E4A34()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493E4A6C()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493E4AA4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493E4AE8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493E4B30()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2493E4B90()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493E4D14@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x130))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493E4E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UIListContentConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
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

uint64_t sub_2493E4F68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UIListContentConfiguration();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2493E5050()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493E50A0()
{
  v1 = (type metadata accessor for DOCBrowserHistoryItem(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v0 + v3 + v1[11];
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2493E51C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493E5200()
{
  v1 = (type metadata accessor for DOCBrowserHistoryItem(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v0 + v3 + v1[11];
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2493E5328()
{
  v1 = (type metadata accessor for DOCBrowserHistoryItem(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v0 + v3 + v1[11];
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v8 + 16, v2 | 7);
}

uint64_t sub_2493E5470@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x68))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493E54CC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x70);

  return v4(v2, v3);
}

uint64_t sub_2493E5544@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*((*MEMORY[0x277D85000] & **a1) + 0x158))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCProgressProvidingOperation) -> (@unowned Bool);
  a2[1] = result;
  return result;
}

uint64_t sub_2493E55E4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1B8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493E56AC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2493E5768(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2493E5820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemV07historyF0_tMd);
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

uint64_t sub_2493E5898(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemV07historyF0_tMd);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2493E592C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
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

uint64_t sub_2493E59F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
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

uint64_t sub_2493E5AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2493E5B80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_2493E5C38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493E5C90()
{
  v1 = (type metadata accessor for DOCBrowserHistoryItem(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v0 + v3 + v1[11];
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v7 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_2493E5DE8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493E5E28()
{
  v1 = (type metadata accessor for DOCBrowserHistoryItem(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v0 + v3 + v1[11];
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_2493E5F6C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493E5FA4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493E5FE4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  v6 = type metadata accessor for DOCBrowserHistoryItem(0);
  if (!(*(*(v6 - 1) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);

    v8 = v5 + v6[9];
    if (*(v8 + 24))
    {
      __swift_destroy_boxed_opaque_existential_0(v8);
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_2493E617C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 5));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2493E61DC()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493E6214()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2493E6274()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2493E62C4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2493E6394()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493E63D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493E6410()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493E6498()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493E64D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493E651C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 168);

  return v4(v2, v3);
}

uint64_t sub_2493E6584@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493E661C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493E66B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493E6700(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 240);

  return v4(v2, v3);
}

uint64_t sub_2493E6768@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493E6810@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493E68C8()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2493E6908()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493E6950()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2493E6988@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 numberOfLines];
  *a2 = result;
  return result;
}

id sub_2493E69D0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 adjustsFontForContentSizeCategory];
  *a2 = result;
  return result;
}

id sub_2493E6A18@<X0>(_BYTE *a1@<X8>)
{
  result = DOCViewDecorator.isHidden.getter();
  *a1 = result & 1;
  return result;
}

id sub_2493E6A88@<X0>(void *a1@<X8>)
{
  result = DOCViewDecorator.alpha.getter();
  *a1 = v3;
  return result;
}

id sub_2493E6AE8@<X0>(_BYTE *a1@<X8>)
{
  result = DOCViewDecorator.translatesAutoresizingMaskIntoConstraints.getter();
  *a1 = result & 1;
  return result;
}

id sub_2493E6B4C@<X0>(void *a1@<X8>)
{
  result = DOCViewDecorator.tintColor.getter();
  *a1 = result;
  return result;
}

void sub_2493E6B78(id *a1)
{
  v1 = *a1;
  specialized DOCViewDecorator.tintColor.setter(v1);
}

id sub_2493E6C18@<X0>(void *a1@<X8>)
{
  result = DOCViewDecorator<>.menu.getter();
  *a1 = result;
  return result;
}

void sub_2493E6C44(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  specialized DOCViewDecorator<>.menu.setter(v1);
}

id sub_2493E6CA0@<X0>(void *a1@<X8>)
{
  result = DOCViewDecorator<>.font.getter();
  *a1 = result;
  return result;
}

void sub_2493E6CCC(id *a1)
{
  v1 = *a1;
  specialized DOCViewDecorator<>.font.setter(v1);
}

id sub_2493E6D24@<X0>(void *a1@<X8>)
{
  result = DOCViewDecorator<>.numberOfLines.getter();
  *a1 = result;
  return result;
}

id sub_2493E6D84@<X0>(void *a1@<X8>)
{
  result = DOCViewDecorator<>.textColor.getter();
  *a1 = result;
  return result;
}

void sub_2493E6DB0(id *a1)
{
  v1 = *a1;
  specialized DOCViewDecorator<>.textColor.setter(v1);
}

id sub_2493E6E08@<X0>(void *a1@<X8>)
{
  result = DOCViewDecorator<>.attributedText.getter();
  *a1 = result;
  return result;
}

void sub_2493E6E34(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  specialized DOCViewDecorator<>.attributedText.setter(v1);
}

uint64_t sub_2493E6E90@<X0>(uint64_t *a1@<X8>)
{
  result = DOCViewDecorator<>.text.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_2493E6ECC@<X0>(void *a1@<X8>)
{
  result = DOCViewDecorator<>.textAlignment.getter();
  *a1 = result;
  return result;
}

id sub_2493E6F2C@<X0>(_BYTE *a1@<X8>)
{
  result = DOCViewDecorator<>.adjustsFontForContentSizeCategory.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2493E6F90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_2493E6FD0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 font];
  *a2 = result;
  return result;
}

uint64_t sub_2493E7078()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 32) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

id sub_2493E7150@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentPreviewItemIndex];
  *a2 = result;
  return result;
}

uint64_t sub_2493E7198()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493E71D0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493E7210@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493E726C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xF8);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_2493E72E0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x108))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493E7344(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x110);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_2493E73C0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x120))();
  *a2 = result;
  return result;
}

uint64_t sub_2493E7424(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x128);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493E7494@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x138))();
  *a2 = result;
  return result;
}

uint64_t sub_2493E74F8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x140);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493E7568@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x150))();
  *a2 = result;
  return result;
}

uint64_t sub_2493E75CC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x158);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493E763C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x168))();
  *a2 = result;
  return result;
}

uint64_t sub_2493E76A0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x170);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493E7710@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1D0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493E7774(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x1D8);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

id sub_2493E77F0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

uint64_t sub_2493E7840@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1E8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493E78A4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x1F0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493E7914@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x240))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493E79DC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x258))();
  *a2 = result;
  return result;
}

uint64_t sub_2493E7A40(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x260);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493E7AB0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2493E7B84()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 9, v3 | 7);
}

uint64_t sub_2493E7C5C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2493E7C9C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2493E7D8C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2493E7E24()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493E7E64()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2493E7F28()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493E7F88()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493E7FC0()
{
  v1 = (type metadata accessor for FINodeEntity() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for FileEntityIdentifier();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2493E80DC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493E8124@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2493E8150@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2493E81A8@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_2493E8220@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_2493E829C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static RenameItemIntent.openAppWhenRun;
  return result;
}

uint64_t sub_2493E82E8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static RenameItemIntent.openAppWhenRun = v1;
  return result;
}

uint64_t sub_2493E83FC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2493E8428@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493E8488@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493E84E4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xE0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493E854C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493E85A8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xF8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493E8610@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x108))();
  *a2 = result;
  return result;
}

uint64_t sub_2493E8674(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x110);

  return v2(v3);
}

uint64_t sub_2493E86E0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x120))();
  *a2 = result;
  return result;
}

uint64_t sub_2493E8744(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x128);

  return v2(v3);
}

uint64_t sub_2493E87B0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2493E87DC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

double sub_2493E8854@<D0>(_OWORD *a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_2493E88F4@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_2493E8970@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static CreateFolderIntent.openAppWhenRun;
  return result;
}

uint64_t sub_2493E89BC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static CreateFolderIntent.openAppWhenRun = v1;
  return result;
}

uint64_t sub_2493E8AD0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2493E8AFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCSgs5Error_pGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2493E8B90()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2493E8C18()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493E8C58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493E8C98()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493E8CFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493E8D3C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2493E8E04()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493E8E3C()
{
  if (*(v0 + 32) >= 9uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493E8EAC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2493E8EF4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_2493E8F3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493E8F7C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x148))();
  *a2 = result;
  return result;
}

uint64_t sub_2493E8FE0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x150);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493E9050@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x160))();
  *a2 = result;
  return result;
}

uint64_t sub_2493E90B4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x168);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493E9124@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x178))();
  *a2 = result;
  return result;
}

uint64_t sub_2493E91F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1A8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493E9258(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x1B0);

  return v2(v3);
}

double sub_2493E92C4@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x1C0))(v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_2493E9344@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1F0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493E9408@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x208))();
  *a2 = result;
  return result;
}

uint64_t sub_2493E946C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x210);

  return v2(v3);
}

uint64_t sub_2493E94D8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x220))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493E95A0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x238))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493E9604(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x240);

  return v4(v2, v3);
}

uint64_t sub_2493E9684@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x268))();
  *a2 = result;
  return result;
}

uint64_t sub_2493E96E8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x270);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493E9758@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x280))();
  *a2 = result;
  return result;
}

uint64_t sub_2493E97BC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x288);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493E982C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x298))();
  *a2 = result;
  return result;
}

uint64_t sub_2493E9890(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x2A0);
  v4 = *a1;
  return v3(v2);
}

double sub_2493E9900@<D0>(void **a1@<X0>, _OWORD *a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x2B0))(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

uint64_t sub_2493E997C(_OWORD *a1, void **a2)
{
  v2 = *a2;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return (*((*MEMORY[0x277D85000] & *v2) + 0x2B8))(v5);
}

uint64_t sub_2493E99FC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2E0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493E9A60(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x2E8);

  return v2(v3);
}

uint64_t sub_2493E9ACC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2F8))();
  *a2 = result;
  return result;
}

double sub_2493E9B90@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x310))(&v6);
  v3 = v7;
  v4 = v8;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_2493E9C18@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x328))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493E9CE0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x340))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493E9DA8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x358))();
  *a2 = result;
  return result;
}

uint64_t sub_2493E9E78@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x370))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493E9F40@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x388))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EA010()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EA058@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2493EA084@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27EEED268;
  *a1 = static QuickLookFileIntent.attributionBundleIdentifier;
  a1[1] = v2;
}

uint64_t sub_2493EA0D8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static QuickLookFileIntent.isDiscoverable;
  return result;
}

uint64_t sub_2493EA124(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static QuickLookFileIntent.isDiscoverable = v1;
  return result;
}

uint64_t sub_2493EA1E0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EA218()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2493EA260()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2493EA2B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EA2F8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493EA3B8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2493EA40C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EA44C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EA4BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_createDocumentHandler;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2493EA518(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_createDocumentHandler;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

id sub_2493EA57C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_hostProvidedMenu;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2493EA5E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EA628()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EA660()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EA698()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EA6D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EA718@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493EA774(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xE0);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_2493EA7E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EA8A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x108))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493EA90C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x110);

  return v4(v2, v3);
}

uint64_t sub_2493EA98C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493EA9F0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x128);

  return v4(v2, v3);
}

uint64_t sub_2493EAA70@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x138))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EAAD8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 104);
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

  v10 = type metadata accessor for UIButton.Configuration();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v11 = v10;
    v12 = *(v10 - 8);
    v13 = a3[11];
LABEL_9:
    v15 = *(v12 + 48);

    return v15(a1 + v13, a2, v11);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationV4SizeOSgMd);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v11 = v14;
    v12 = *(v14 - 8);
    v13 = a3[12];
    goto LABEL_9;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationV11CornerStyleOSgMd);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[13];

  return v17(v18, a2, v16);
}

uint64_t sub_2493EAC5C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 104) = a2 + 1;
    return result;
  }

  v8 = type metadata accessor for UIButton.Configuration();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[11];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationV4SizeOSgMd);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationV11CornerStyleOSgMd);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_2493EADDC()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EAE14()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EAE4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EAEE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EAF30(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 104);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_2493EAF94@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2493EAFC0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2493EAFEC@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_2493EB08C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static SaveToFilesIntent.openAppWhenRun;
  return result;
}

uint64_t sub_2493EB0D8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static SaveToFilesIntent.openAppWhenRun = v1;
  return result;
}

uint64_t sub_2493EB1F4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2493EB23C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2493EB284()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo7DOCNode_pGs5Error_pGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2493EB324()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2493EB374()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2493EB3D0()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2493EB430()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2493EB48C()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EB4C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2493EB514()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EB54C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2493EB5A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EB5DC()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2493EB64C()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EB684()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EB6D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EB728()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EB760()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493EB7A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EB7E4()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2493EB834()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EB870()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EB8B0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x130))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EB914(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x138);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493EB990()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EB9C8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x70))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493EBA80@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EBADC(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x90);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_2493EBB48()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EBB80()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id _s26DocumentManagerExecutables31DOCItemCollectionViewControllerC46setProtectedStateToLockedForDidEnterBackground33_CF1CCFE985BAB48C33277EE3D9BEE8C3LLyyFyycfU__0(char a1)
{
  v2 = objc_opt_self();

  return [v2 setAnimationsEnabled_];
}

uint64_t sub_2493EBC0C()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EBC44@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EBCA0(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x60);

  return v2(v3);
}

uint64_t sub_2493EBD18()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EBD54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 408))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EBDA8(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 416);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493EBE08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 432))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EBE5C(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 440);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493EBEBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 480))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EBF10(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 488);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493EBF70@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 528))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493EC018()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EC050()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EC088()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EC0C8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493EC108()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493EC14C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493EC18C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x250))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EC1F0(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x258);

  return v2(v3);
}

uint64_t sub_2493EC25C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EC2B8(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xF0);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

double sub_2493EC31C@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x58))(v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_2493EC394@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_outlineDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2493EC3F0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_outlineDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2493EC454()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EC498()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EC4D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EC528@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x120))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EC58C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x128);

  return v2(v3);
}

uint64_t sub_2493EC5F8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1A0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EC6BC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1B8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EC78C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1F0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493EC854@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x208))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EC924@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x260))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493EC988(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x268);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_2493ECA04@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x278))();
  *a2 = result;
  return result;
}

uint64_t sub_2493ECA68(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x280);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_2493ECAD4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x290))();
  *a2 = result & 1;
  return result;
}

id sub_2493ECB9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

uint64_t sub_2493ECBEC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2A8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493ECC50(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x2B0);

  return v2(v3);
}

uint64_t sub_2493ECCBC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2D8))();
  *a2 = result;
  return result;
}

id sub_2493ECD80@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 searchResultsUpdater];
  *a2 = result;
  return result;
}

uint64_t sub_2493ECDD0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x390))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493ECE98@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x3A8))();
  *a2 = result & 1;
  return result;
}

void *sub_2493ECF60@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x3C0))(&v6);
  v4 = BYTE1(v6);
  v5 = BYTE2(v6);
  *a2 = v6;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t sub_2493ECFE4(_BYTE *a1, void **a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a2;
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = v3;
  return (*((*MEMORY[0x277D85000] & *v4) + 0x3C8))(v6);
}

uint64_t sub_2493ED064@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x98))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493ED11C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493ED1D0()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493ED208()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493ED240()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493ED290()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493ED2D8@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2493ED30C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27EEEDE20;
  *a1 = static SetFilenameExtensionVisibilityIntent.attributionBundleIdentifier;
  a1[1] = v2;
}

uint64_t sub_2493ED360@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_2493ED428@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_2493ED484(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x68);

  return v2(v3);
}

uint64_t sub_2493ED4E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_2493ED544(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x80);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_2493ED5A8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_2493ED610@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 376))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_2493ED674(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 384))(&v4);
}

void *sub_2493ED6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 400))(&v6);
  v4 = v7;
  v5 = v8;
  *a2 = v6;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
  return result;
}

uint64_t sub_2493ED754(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *a2;
  v6 = *a1;
  v7 = v2;
  v8 = v3;
  return (*(*v4 + 408))(&v6);
}

uint64_t sub_2493ED7D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493ED80C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493ED844()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493ED888()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2493ED8C0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2493ED900()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

__n128 sub_2493ED9E8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2493ED9F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EDA38()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EDA70@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EDACC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x60);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493EDB34()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EDB70@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t sub_2493EDC38@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x68))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493EDC94(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x70);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_2493EDD08@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EDD64(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x88);

  return v2(v3);
}

uint64_t sub_2493EDDC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EDE14(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 168);

  return v2(v3);
}

uint64_t sub_2493EDE68@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493EDF00()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2493EDF38@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isHidden];
  *a2 = result;
  return result;
}

uint64_t sub_2493EDF80()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EDFB8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x70))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493EE070@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EE0CC(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);

  return v2(v3);
}

uint64_t sub_2493EE130()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EE168()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EE1A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EE1E0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2493EE230()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EE268()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EE2A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EE2E0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493EE328()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EE360()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2493EE3C0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493EE444()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    outlined consume of DOCSidebarItem(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_2493EE4A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EE5C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EE5F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EE630()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EE668()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2493EE6C8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EE788@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EE804@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EE880@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EE8DC(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xF8);

  return v2(v3);
}

uint64_t sub_2493EE940@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x108))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EE9A4(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x110);

  return v2(v3);
}

uint64_t sub_2493EEA10@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x128))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493EEA74(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x130);

  return v4(v2, v3);
}

uint64_t sub_2493EEAF4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x140))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EEB58(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x148);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_2493EEBC4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x158))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EEC28(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x160);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_2493EEC94@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x170))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2493EED6C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x188))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EEE30()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EEE68()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2493EEEC8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EEF04()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2493EEF54()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2493EEF9C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493EEFDC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_2493EF054@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredContentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_2493EF09C()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EF0D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EF130@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

__n128 sub_2493EF260(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2493EF2DC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EF314()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2493EF37C()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493EF3BC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1D0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493EF484@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1E8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EF4E8(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x1F0);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_2493EF554@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x200))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EF5B8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x208);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493EF628@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x218))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EF68C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x220);

  return v2(v3);
}

uint64_t sub_2493EF6F8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x268))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493EF7C0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2F8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EF824(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x300);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493EF894@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x310))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EF8F8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x318);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493EFA54@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x340))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EFB18@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x358))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493EFBE0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x370))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EFCA4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x388))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493EFD6C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x3A0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EFDD0(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x3A8);

  return v2(v3);
}

uint64_t sub_2493EFE3C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x3C0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EFEA0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x3C8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493EFF10@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x3D8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493EFF74(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x3E0);

  return v2(v3);
}

uint64_t sub_2493EFFE0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x3F8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F0044(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x400);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F00B4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x410))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F0118(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x418);

  return v2(v3);
}

uint64_t sub_2493F0184@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x428))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F01E8(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x430);

  return v2(v3);
}

uint64_t sub_2493F0254@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F02A0(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 120);
  v4 = *a1;
  return v3(v2);
}

double sub_2493F02F8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 136))(&v5);
  v3 = v6[0];
  *a2 = v5;
  a2[1] = v3;
  result = *(v6 + 9);
  *(a2 + 25) = *(v6 + 9);
  return result;
}

uint64_t sub_2493F035C(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v6 = *a1;
  v7[0] = v2;
  *(v7 + 9) = *(a1 + 25);
  v3 = *(**a2 + 144);
  outlined init with copy of DOCGridLayout.Spec?(&v6, &v5, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
  return v3(&v6);
}

uint64_t sub_2493F03E0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x440))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F04A4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x458))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F056C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x470))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F05D0(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x478);

  return v2(v3);
}

uint64_t sub_2493F0644@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x488))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F06A8(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x490);

  return v2(v3);
}

double sub_2493F077C@<D0>(void **a1@<X0>, _OWORD *a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x4B8))(&v5);
  v3 = v6[0];
  *a2 = v5;
  a2[1] = v3;
  result = *(v6 + 9);
  *(a2 + 25) = *(v6 + 9);
  return result;
}

uint64_t sub_2493F07F8(__int128 *a1, void **a2)
{
  v2 = a1[1];
  v6 = *a1;
  v7[0] = v2;
  *(v7 + 9) = *(a1 + 25);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x4C0);
  outlined init with copy of DOCGridLayout.Spec?(&v6, &v5, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
  return v3(&v6);
}

uint64_t sub_2493F08A0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x508))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F0904(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x510);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F0974@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x520))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F09D8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x528);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F0A48@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x550))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F0AAC(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x558);

  return v2(v3);
}

uint64_t sub_2493F0B18@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x568))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F0BDC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x580))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F0C40(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x588);

  return v2(v3);
}

uint64_t sub_2493F0CAC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x5B0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F0D10(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x5B8);

  return v2(v3);
}

uint64_t sub_2493F0D7C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x610))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F0DE0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x618);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F0E50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493F0EA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493F0EF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493F0F40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493F0F78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493F0FB0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2493F0FE8()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2493F1028()
{

  outlined consume of DOCSidebarItem(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_2493F1074()
{

  outlined consume of DOCSidebarItem(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2493F10D0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

double sub_2493F1138@<D0>(id *a1@<X0>, double *a2@<X8>)
{
  result = [*a1 totalUnitCount] / 1000000.0;
  *a2 = result;
  return result;
}

double sub_2493F11A0@<D0>(id *a1@<X0>, double *a2@<X8>)
{
  result = [*a1 completedUnitCount] / 1000000.0;
  *a2 = result;
  return result;
}

id sub_2493F1208@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2493F1274()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F12BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(*a1 + 144))(a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F1334@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x120))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F1398(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x128);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F1408@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x148))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493F146C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x150);

  return v4(v2, v3);
}

uint64_t sub_2493F1524()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2493F157C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493F15C4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2493F1638()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F1670()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493F16C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493F1708()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493F1744()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2493F1794()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2493F17D4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493F1818()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493F1850()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F1888()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F18C0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2493F19B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo6FPItemCGs5Error_pGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2493F1AAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo6FPItemCGs5Error_pGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2493F1B78()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F1BB4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2493F1C34()
{

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2493F1C9C()
{

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2493F1D04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVySo16os_unfair_lock_sVGMd);
  _s15Synchronization5_CellVAARi_zrlEfD();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVySaySo6FPItemCGGMd);
  _s15Synchronization5_CellVAARi_zrlEfD();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493F1D78()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2493F1DC8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2493F1E10()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2493F1E60()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F1E98()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2493F1EF0()
{
  if (*(v0 + 16))
  {
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2493F201C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F2068(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 120);

  return v2(v3);
}

uint64_t sub_2493F20BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F2154@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F21EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F2238(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 192);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F2290@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F22DC(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 112);

  return v2(v3);
}

uint64_t sub_2493F2330@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F237C(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 136);

  return v2(v3);
}

uint64_t sub_2493F23D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F241C(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 160);

  return v2(v3);
}

uint64_t sub_2493F2470@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2493F249C@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_2493F25A4()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F25DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493F261C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_2493F265C@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  result = *&static DOCItemCollectionListCell.iconToTitleSpacing;
  *a1 = static DOCItemCollectionListCell.iconToTitleSpacing;
  return result;
}

uint64_t sub_2493F26A8(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static DOCItemCollectionListCell.iconToTitleSpacing = v1;
  return result;
}

uint64_t sub_2493F26F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493F2744(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 96);

  return v4(v2, v3);
}

uint64_t sub_2493F27AC()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F27E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493F2834(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 192);

  return v4(v2, v3);
}

uint64_t sub_2493F289C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F2930@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F29D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493F2A28(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 336);

  return v4(v2, v3);
}

uint64_t sub_2493F2A98@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 376))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F2B3C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 424))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F2BE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 472))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F2C38(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 480);

  return v2(v3);
}

uint64_t sub_2493F2C94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 520))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F2CE8(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 528);

  return v2(v3);
}

uint64_t sub_2493F2D44@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2493F2DF4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F2E50(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x70);

  return v2(v3);
}

uint64_t sub_2493F2EB4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F2F10(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x90);

  return v2(v3);
}

uint64_t sub_2493F31EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 568))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493F3240(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 576);

  return v4(v2, v3);
}

uint64_t sub_2493F32B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 592))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F3304(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 600);

  return v2(v3);
}

uint64_t sub_2493F3360@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 616))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F33B4(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 624);

  return v2(v3);
}

uint64_t sub_2493F341C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_2493F346C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_2493F34B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  a2[1] = v5;
}

uint64_t sub_2493F3520@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  a2[1] = v5;
}

uint64_t sub_2493F35FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493F3634@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2493F3690@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.textContentType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2493F3740()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F3778@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493F37C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(**a2 + 128);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_2493F3828@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&static DOCVibrancy.ConfigurationTrait.name[8];
  *a1 = *static DOCVibrancy.ConfigurationTrait.name;
  a1[1] = v2;
}

uint64_t sub_2493F387C@<X0>(_BYTE *a1@<X8>)
{
  result = UIMutableTraits.doc_vibrancyConfiguration.getter();
  *a1 = v3;
  return result;
}

__n128 sub_2493F38F8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2493F390C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F3944()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F3980()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2493F3A1C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493F3A5C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F3C28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2493F3C84(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2493F3CE8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493F3D48()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F3D80()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493F3DC8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493F3E4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F3EEC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x118))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F3F50(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x120);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

id sub_2493F3FBC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isGathering];
  *a2 = result;
  return result;
}

uint64_t sub_2493F4004@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x160))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493F4068(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x168);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_2493F40E4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1C0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F4148(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x1C8);

  return v2(v3);
}

uint64_t sub_2493F41B4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1D8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F427C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x290))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F42E0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x298);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F4350@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2A8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F43B8()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2493F440C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F4448()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493F4488()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2493F44D8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493F4518()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493F4560()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F45D4()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F461C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493F4654()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493F4694()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2493F46CC()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493F4714()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2493F474C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F47A8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x70);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F4810@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F486C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x88);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F48D4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F498C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493F49E8(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xF0);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_2493F4A5C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x118))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F4AC0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x120);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F4B30@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x130))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F4B94(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x138);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F4C04@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x148))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F4C68(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x150);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F4CD8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x160))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F4D3C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x168);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F4DAC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x180))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F4E74@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x198))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F4F44@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1B0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F500C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1C8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F50DC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1E0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F51AC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x208))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F5210(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x210);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F5280@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x230))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F52E4(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x238);

  return v2(v3);
}

uint64_t sub_2493F5350@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x250))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F5418@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2A8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F547C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x2B0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F54EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x378))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F5550(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x380);

  return v2(v3);
}

uint64_t sub_2493F55BC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x390))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F5620(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x398);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F5690@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x3A8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F56F8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isRenaming;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_2493F5754()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F578C()
{
  v1 = type metadata accessor for ImageOptions();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2493F5858()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493F58AC()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

id _sSo36DOCFullDocumentManagerViewControllerC0bC11Executables25DOCConfigurationProvidingA2cDP13configurationSo0G0CvgTW_0()
{
  v1 = [*v0 configuration];

  return v1;
}

uint64_t sub_2493F5948@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F59A4(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x80);

  return v2(v3);
}

uint64_t sub_2493F5A08@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F5A64(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x98);

  return v2(v3);
}

uint64_t sub_2493F5B7C()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F5BB4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 28) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2493F5C78()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2493F5D58()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;
  v7 = (((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_2493F5E80()
{
  outlined consume of DOCTagManagerAction(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2493F5F1C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493F5F6C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F5FA4()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F5FDC()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2493F604C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F6084()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2493F60E4@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_2493F617C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2493F61CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F6204()
{

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2493F626C()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F62A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493F62E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2493F633C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2493F6390()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2493F63E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493F6420()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F6458()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493F6490()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493F64DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493F6514()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2493F6564()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_2493F659C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 forceDisableDictation];
  *a2 = result;
  return result;
}

id sub_2493F65F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 operationState];
  *a2 = result;
  return result;
}

uint64_t sub_2493F6640()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F6678@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F66D4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xD8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F6794@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x120))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F6864@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x138))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F6934@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x150))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F6A04@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x168))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F6AD4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x188))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F6BA4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F6BDC()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2493F6C24()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F6C60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493F6CA0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F6CD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F6D24(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F6D7C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493F6DBC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493F6DF4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2C0))();
  *a2 = result;
  return result;
}

double sub_2493F6EB8@<D0>(void **a1@<X0>, _OWORD *a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x2D8))(v9);
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

uint64_t sub_2493F6F5C(_OWORD *a1, void **a2)
{
  v2 = a1[9];
  v3 = a1[7];
  v26 = a1[8];
  v27 = v2;
  v4 = a1[9];
  v28[0] = a1[10];
  *(v28 + 9) = *(a1 + 169);
  v5 = a1[5];
  v6 = a1[3];
  v22 = a1[4];
  v23 = v5;
  v7 = a1[5];
  v8 = a1[7];
  v24 = a1[6];
  v25 = v8;
  v9 = a1[1];
  v19[0] = *a1;
  v19[1] = v9;
  v10 = a1[3];
  v12 = *a1;
  v11 = a1[1];
  v20 = a1[2];
  v21 = v10;
  v17[8] = v26;
  v17[9] = v4;
  v18[0] = a1[10];
  *(v18 + 9) = *(a1 + 169);
  v17[4] = v22;
  v17[5] = v7;
  v17[6] = v24;
  v17[7] = v3;
  v17[0] = v12;
  v17[1] = v11;
  v13 = *MEMORY[0x277D85000] & **a2;
  v17[2] = v20;
  v17[3] = v6;
  v14 = *(v13 + 736);
  outlined init with copy of DOCGridLayout.Spec?(v19, &v16, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
  return v14(v17);
}

double sub_2493F7068@<D0>(void **a1@<X0>, _OWORD *a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x2F0))(v8);
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

uint64_t sub_2493F70F4(_OWORD *a1, void **a2)
{
  v2 = a1[5];
  v3 = a1[3];
  v19 = a1[4];
  v20 = v2;
  v4 = a1[5];
  v5 = a1[7];
  v21 = a1[6];
  v22 = v5;
  v6 = a1[1];
  v16[0] = *a1;
  v16[1] = v6;
  v7 = a1[3];
  v9 = *a1;
  v8 = a1[1];
  v17 = a1[2];
  v18 = v7;
  v15[4] = v19;
  v15[5] = v4;
  v10 = a1[7];
  v15[6] = v21;
  v15[7] = v10;
  v15[0] = v9;
  v15[1] = v8;
  v11 = *MEMORY[0x277D85000] & **a2;
  v15[2] = v17;
  v15[3] = v3;
  v12 = *(v11 + 760);
  outlined init with copy of DOCGridLayout.Spec?(v16, &v14, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
  return v12(v15);
}

uint64_t sub_2493F7294@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x320))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F72F8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x328);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F7368@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x368))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F73CC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x370);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F743C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x380))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F7500@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x398))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F75C8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x3B0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F7690@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x3D0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F76F4(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x3D8);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

double sub_2493F7760@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x3E8))(&v6);
  v3 = v7;
  v4 = v8;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_2493F77E8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x400))();
  *a2 = result & 1;
  return result;
}

void *sub_2493F78B0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x418))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_2493F7924(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x420))(&v4);
}

uint64_t sub_2493F7994@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x430))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F7A5C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x448))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F7B24@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x460))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F7BE8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x478))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2493F7CC0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x490))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F7DE4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x4C0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F7EAC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x4D8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F7F70@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x4F0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F8034@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x508))();
  *a2 = result;
  return result;
}

double sub_2493F80F8@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x520))(v7);
  v3 = v8;
  v4 = v9;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  return result;
}

uint64_t sub_2493F817C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *a2;
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v2;
  v9 = v3;
  return (*((*MEMORY[0x277D85000] & *v4) + 0x528))(v7);
}

uint64_t sub_2493F81FC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x538))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F8260(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x540);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F82D0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x568))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F8334(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x570);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F83A4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x5F8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493F8408(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x600);

  return v4(v2, v3);
}

uint64_t sub_2493F8488@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x610))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493F84EC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x618);

  return v4(v2, v3);
}

uint64_t sub_2493F856C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x658))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F863C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x670))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F870C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x688))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F87DC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x6A0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F88AC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x6B8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F897C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x840))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493F89E0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x848);

  return v4(v2, v3);
}

uint64_t sub_2493F8A60@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x898))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F8B28@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x918))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F8BEC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x960))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F8C50(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x968);

  return v2(v3);
}

uint64_t sub_2493F8CBC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB98))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493F8D20(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xBA0);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_2493F8DA0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result & 1;
  return result;
}

id sub_2493F8E5C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isItemCollectionDragActive];
  *a2 = result;
  return result;
}

uint64_t sub_2493F8EA4()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F8EDC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F8F38(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x90);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F8FA0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F8FFC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F9064@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F911C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F91D4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F9230(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xF0);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_2493F9294@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x120))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F9358()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F9390()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2493F93DC()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493F941C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F9478(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x98);
  v4 = *a1;
  return v3(v2);
}

__n128 sub_2493F94EC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_2493F9514@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type ShouldDimKey and conformance ShouldDimKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_2493F95EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F9684@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F971C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F97C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F986C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F9914@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F99AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F99F8(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493F9A50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F9A9C(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

uint64_t sub_2493F9AF0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2493F9B70@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2493F9C2C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2493F9C90@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493F9D28@<X0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type BrowserConfigurationKey and conformance BrowserConfigurationKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_2493F9E48@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2493F9EA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_2493F9EF0(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 96);

  return v2(v3);
}

uint64_t sub_2493F9F44@<X0>(void *a1@<X8>)
{
  lazy protocol witness table accessor for type OutlineProgressStateKey and conformance OutlineProgressStateKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_2493F9F98(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2493FA054(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2493FA10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LayoutSubview();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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

uint64_t sub_2493FA1D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LayoutSubview();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2493FA290(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Column(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[11];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[12];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2493FA41C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Column(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[11];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_2493FA5A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for LeadingTitle(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[11]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ContentSizeCategoryOGMd);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[14];
      goto LABEL_3;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[15];
      goto LABEL_3;
    }

    v15 = type metadata accessor for Column(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[17];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2493FA778(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for LeadingTitle(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[11]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ContentSizeCategoryOGMd);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[14];
    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[15];
    goto LABEL_3;
  }

  v15 = type metadata accessor for Column(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[17];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_2493FA964()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA08AnyShapeD0VGMd);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA08AnyShapeD0VGMd);
  return swift_getWitnessTable();
}

uint64_t sub_2493FAA68()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type OutlineFontModifier and conformance OutlineFontModifier();
  return swift_getWitnessTable();
}

uint64_t sub_2493FAB38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493FAC3C()
{
  v1 = type metadata accessor for Header(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  type metadata accessor for Column(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 2)
        {

          if (*(v5 + 48) != 1)
          {
          }

          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd);
          v8 = v5 + v7[16];
          type metadata accessor for LeadingTitle(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v9 = type metadata accessor for AttributedString();
            (*(*(v9 - 8) + 8))(v8, v9);
          }

          else
          {
          }
        }

        goto LABEL_19;
      }
    }

    else
    {
      v10 = type metadata accessor for Date();
      (*(*(v10 - 8) + 8))(v0 + v3, v10);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd);

      if (*(v5 + *(v11 + 64) + 8) < 9uLL)
      {
        goto LABEL_19;
      }
    }

LABEL_16:

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (*(v5 + 8) < 9uLL)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
  {
  }

LABEL_19:
  if (*(v5 + v1[5] + 8) >= 9uLL)
  {
  }

  v12 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorScheme();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  v14 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for UserInterfaceSizeClass();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v5 + v14, 1, v15))
    {
      (*(v16 + 8))(v5 + v14, v15);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2493FB024()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493FB064@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493FB0C0(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xB0);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_2493FB124@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t sub_2493FB180(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x60);

  return v2(v3);
}

uint64_t sub_2493FB1EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493FB224@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_2493FB280(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x80);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493FB2E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493FB344(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xF0);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_2493FB3C0()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493FB3FC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493FB434()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493FB46C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493FB4AC()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2493FB658@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for updateIntent != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = &type metadata for RenameItemIntent;
  return result;
}

uint64_t sub_2493FB6BC()
{
  if (one-time initialization token for updateIntent != -1)
  {
    return swift_once();
  }

  return result;
}

double sub_2493FB77C@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for FINodeEntity();
  EntityProperty.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_2493FB7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FileEntityIdentifier();
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

uint64_t sub_2493FB890(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FileEntityIdentifier();
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

uint64_t sub_2493FB98C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCs5Error_pGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2493FBA20()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493FBA58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493FBA94()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493FBAD4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493FBB28()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493FBB60()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2493FBBA0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2493FBBE8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493FBC28()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493FBC60()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2493FBCA8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 9, v3 | 7);
}

uint64_t sub_2493FBD54()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 9, v3 | 7);
}

uint64_t sub_2493FBE60@<X0>(uint64_t *a1@<X8>)
{
  result = DOCFullDocumentManagerViewController.browserHistoryController.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2493FBE8C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493FBEC4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2493FBFC4()
{
  v1 = *(type metadata accessor for DOCDebugInfoManager.OutputKind() - 8);
  v12 = *(v1 + 80);
  v2 = (v12 + 24) & ~v12;
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v6 + 8) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;

  v10 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 8))(v10, v4);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + v7, v4);

  if (*(v0 + v9))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v9 + 16, v12 | v6 | 7);
}

uint64_t sub_2493FC198()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493FC1D0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493FC210@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493FC260(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_2493FC2A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493FC2DC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2493FC3BC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2493FC4B4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493FC4EC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2493FC524()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493FC564@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x250))();
  *a2 = result;
  return result;
}

uint64_t sub_2493FC5C8(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x258);

  return v2(v3);
}

uint64_t sub_2493FC634@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x268))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493FC698(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x270);

  return v4(v2, v3);
}

uint64_t sub_2493FC718@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x280))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493FC77C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x288);

  return v4(v2, v3);
}

uint64_t sub_2493FC7FC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x298))();
  *a2 = result;
  return result;
}

uint64_t sub_2493FC8C0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2B0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493FC924(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x2B8);

  return v2(v3);
}

double sub_2493FC990@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x2C8))(v5);
  result = v6;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_2493FCA0C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 32);
  v3 = *a2;
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return (*((*MEMORY[0x277D85000] & *v3) + 0x2D0))(v6);
}

double sub_2493FCA84@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x328))(&v6);
  v3 = v7;
  v4 = v8;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_2493FCB0C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x340))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493FCBD4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x358))();
  *a2 = result;
  return result;
}

uint64_t sub_2493FCC38(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x360);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493FCCA8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x390))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493FCE34@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x3C0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493FCEFC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x3D8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493FCFC4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x3F0))();
  *a2 = result;
  return result;
}

double sub_2493FD088@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x410))(v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_2493FD1DC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x4F0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493FD240(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x4F8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493FD2B0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t sub_2493FD30C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x98);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493FD374()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493FD3AC()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493FD3E4()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2493FD4C8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DOCFastLabel.TextDrawInformation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2493FD574(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DOCFastLabel.TextDrawInformation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2493FD618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2493FD6D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2493FD78C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493FD7D4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2493FD820()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2493FD910()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2493FD970()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2493FD9B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493FDA48()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493FDA80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493FDAB8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2493FDB24()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493FDB5C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493FDBBC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493FDBF4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2493FDC4C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2493FDCA0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493FDCD8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2493FDD84()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2493FDE64()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2493FDF44()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493FDF8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493FDFD0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2493FE0A0()
{
  v1 = type metadata accessor for FileEntityIdentifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2493FE178()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493FE1B0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2493FE200()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2493FE258()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493FE298@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_2493FE330()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2493FE384()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493FE3BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493FE3F4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2493FE44C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493FE48C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493FE4C4()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493FE4FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493FE53C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493FE584()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493FE5D4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2493FE61C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x98))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t sub_2493FE680(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2 + OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_matchingInputRange;
  result = swift_beginAccess();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t sub_2493FE6E0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493FE73C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xB8);

  return v4(v2, v3);
}

uint64_t sub_2493FE874@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493FE8D0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xE8);

  return v4(v2, v3);
}

uint64_t sub_2493FE948@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493FE9A4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x100);

  return v4(v2, v3);
}

uint64_t sub_2493FEA24@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x110))();
  *a2 = result;
  return result;
}

uint64_t sub_2493FEA88(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x118);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493FEB00@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x140))();
  *a2 = result;
  return result;
}

uint64_t sub_2493FEB64(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x148);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493FEBDC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1B8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493FECA0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493FECFC(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x68);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_2493FED70@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493FEDCC(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xC0);

  return v2(v3);
}

uint64_t sub_2493FEE30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493FEE74@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493FEED0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493FEF38@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493FEFF0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2493FF0BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2493FF178()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493FF1B0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2493FF200()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493FF244@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493FF2FC()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2493FF334()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2493FF384@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493FF3E0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493FF448@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493FF4A4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xC0);

  return v4(v2, v3);
}

uint64_t sub_2493FF51C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_2493FF578(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xD8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2493FF5E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493FF618()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493FF658()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2493FF720()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_2493FF7B0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

id sub_2493FF89C@<X0>(_BYTE *a1@<X8>)
{
  result = DOCNode.preferQuicklook.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2493FF90C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493FF94C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2493FF9EC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 32) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2493FFAC4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2493FFBA8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2493FFCF4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2493FFD50(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x80);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_2493FFDC4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

uint64_t sub_2493FFE78@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x110))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2493FFF40()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2493FFF78@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isHidden];
  *a2 = result ^ 1;
  return result;
}

uint64_t sub_2493FFFCC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249400004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
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

    v11 = v10 - 1;
    v12 = v11 <= 0;
    if (v11 < 0)
    {
      v11 = -1;
    }

    if (v12)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }
}

uint64_t sub_2494000CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 + 1);
  }

  return result;
}

uint64_t sub_249400218()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_249400370@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result & 1;
  return result;
}

__n128 sub_249400470(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2494004E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = DOCFocusableCollectionView.hasFocus.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result & 1;
  return result;
}

uint64_t sub_249400568()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2494005A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2494005F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249400628@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result & 1;
  return result;
}

uint64_t _s26DocumentManagerExecutables10ColumnTypeO21DateCreatedCodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOs0H3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2494006B4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_249400710(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x90);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_249400838@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_2494008F8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_249400954(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xD8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2494009BC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t sub_249400A18(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xF0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_249400A80@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x100))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_249400B48@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x118))();
  *a2 = result;
  return result;
}

uint64_t sub_249400BAC(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x120);

  return v2(v3);
}

uint64_t sub_249400C18@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

uint64_t sub_249400CD8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_249400D34(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xE0);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_249400DA8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t sub_249400E68@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x118))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_249400F30@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x148))();
  *a2 = result;
  return result;
}

uint64_t sub_249400F94(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x150);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_249401000@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x160))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2494010C8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1A0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_249401190@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1B8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2494013E8()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249401420()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249401458()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249401498@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t sub_2494014F4(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xB8);

  return v2(v3);
}

uint64_t sub_249401558@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

uint64_t sub_2494015B4(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xD0);

  return v2(v3);
}

uint64_t sub_249401618@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

uint64_t sub_249401674(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xE8);

  return v2(v3);
}

uint64_t sub_2494016D8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF8))();
  *a2 = result;
  return result;
}

uint64_t sub_2494017A0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x268))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_249401868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ScrollToItem(0);
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

uint64_t sub_249401924(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ScrollToItem(0);
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

uint64_t sub_2494019DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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

uint64_t sub_249401AA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IndexPath();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_249401B5C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249401B94()
{
  v1 = (type metadata accessor for ScrollToItem(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for IndexPath();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  if (*(v0 + v3 + v1[8]))
  {
  }

  v6 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v2 | 7);
}

uint64_t sub_249401CB4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249401D08()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_249401D58()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_249401DB0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void _s26DocumentManagerExecutables014DOCInteractionB0C26prepareNodeAndOpenIfNeeded_7contextySo7DOCNode_p_AA0dB7ContextVtFySo6FPItemCSgcfU3__0(void *a1, void (*a2)(void))
{
  if (a1)
  {
    v3 = a1;
    a2();
  }
}

uint64_t sub_249401E58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249401E90()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249401EC8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (*(v0 + 40))
  {
  }

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_249401F48()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249401F88()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249401FC8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249402008()
{

  swift_unknownObjectRelease();
  if (*(v0 + 40))
  {
  }

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_249402080()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = v0 + v5;
  swift_unknownObjectRelease();
  if (*(v0 + v5 + 8))
  {
  }

  if (*(v8 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 72, v2 | 7);
}

uint64_t sub_249402208()
{

  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_249402278()
{

  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_249402314()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24940235C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249402394()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_249402470()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2494024A8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_249402500()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249402548()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249402580()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_26DocumentManagerExecutables025DOCProgressCollectionListD0CAF0I18ProvidingOperation_pGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  v5 = (v3 + 96) & ~v3;
  v6 = (v4 + v3 + v5) & ~v3;
  v7 = *(v2 + 8);
  v7(v0 + v5, v1);
  v7(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v4, v3 | 7);
}

uint64_t sub_2494026E0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

uint64_t sub_24940273C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xE0);
  v4 = *a1;
  return v3(v2);
}

double sub_249402860@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  result = *&static DOCProgressCollectionListViewController.ProgressListingView.minimumFittingHeight;
  *a1 = static DOCProgressCollectionListViewController.ProgressListingView.minimumFittingHeight;
  return result;
}

uint64_t sub_2494028AC(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static DOCProgressCollectionListViewController.ProgressListingView.minimumFittingHeight = v1;
  return result;
}

uint64_t sub_249402904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 104);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for DOCProgressProvidingOperationIconType();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_249402A28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 104) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for DOCProgressProvidingOperationIconType();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_249402B4C()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_249402B8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249402BC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249402C04()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249402C4C()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_249402D34()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249402D70()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249402DB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249402DF8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_249402E90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_249402EDC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 160);

  return v4(v2, v3);
}

uint64_t sub_249402F5C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_249402FF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249403044()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24940308C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2494030C4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249403104()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249403150()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2494031A0()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2494031D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249403210@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_24940326C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x78);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2494032D4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_249403330(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x90);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_249403398@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_2494033F4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_24940345C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_249403514@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x100))();
  *a2 = result;
  return result;
}

uint64_t sub_249403578(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x108);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_2494035E4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x118))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_249403648(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x120);

  return v4(v2, v3);
}

uint64_t sub_2494036C8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x130))();
  *a2 = result;
  return result;
}

uint64_t sub_24940378C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_24940388C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_249403978@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t sub_249403A2C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t sub_249403AEC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_249403BA4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_249403C5C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t sub_249403CB8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xF8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_249403D20@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x110))();
  *a2 = result & 1;
  return result;
}

id sub_249403DE8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 activeDocumentCreationSession];
  *a2 = result;
  return result;
}

uint64_t sub_249403E38@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t sub_249403E94(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xA0);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_249403EF8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t sub_249403F54(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xB8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_249403FBC()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249403FF4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 9, v3 | 7);
}

uint64_t sub_2494040F8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_249404140()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_249404234()
{

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_249404294()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2494042E4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24940431C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v8 + 16, v2 | 7);
}

uint64_t sub_249404464()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940449C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v3 | 7);
}

uint64_t sub_249404590()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v3 | 7);
}

uint64_t sub_2494046A4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2494046F0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  if (!(*(v2 + 48))(v0 + v8, 1, v1))
  {
    v10(v0 + v8, v1);
  }

  v11 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v12 + 16, v3 | v7 | 7);
}

uint64_t sub_249404898()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249404960()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249404998()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2494049E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249404A20()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_249404B08()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249404BD4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  if (!(*(v2 + 48))(v0 + v8, 1, v1))
  {
    v10(v0 + v8, v1);
  }

  v11 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v3 | v7 | 7);
}

uint64_t sub_249404D64()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_249404EE4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  DOCItemCollectionCell.BezierPathView.color.setter(v1);
}

void sub_249404F20(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  DOCItemCollectionCell.BezierPathView.path.setter(v1);
}

id _sSo16DOCConfigurationC26DocumentManagerExecutablesE12sourceListUIAC09DOCSourceF18InterfaceProviding_pvgTo_0()
{
  type metadata accessor for DOCSourceListInterface_Default();
  inited = swift_initStaticObject();

  return inited;
}

uint64_t sub_249404F90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_249404FDC(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 136);

  return v2(v3);
}

uint64_t sub_249405030(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2494050EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2494051A4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2494051DC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_249405278()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2494052B0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249405374()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2494053B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2494053F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_249405458()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249405498()
{
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2494054E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249405528@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_249405584(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x60);

  return v4(v2, v3);
}

uint64_t sub_2494055FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_249405648(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 160);

  return v2(v3);
}

uint64_t sub_24940569C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_2494056E8(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 184);

  return v2(v3);
}

uint64_t sub_24940573C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_249405788(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 208);

  return v2(v3);
}

uint64_t sub_2494057DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_249405828(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 232);

  return v2(v3);
}

uint64_t sub_24940587C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_24940591C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  return result;
}

uint64_t sub_2494059C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_249405A14(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 304);

  return v4(v2, v3);
}

uint64_t sub_249405A84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_249405AD8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 328);

  return v4(v2, v3);
}

uint64_t sub_249405B48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  return result;
}

uint64_t sub_249405B9C(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 352);

  return v2(v3);
}

uint64_t sub_249405BF8()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249405C30()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249405C78()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  swift_unknownObjectRelease();
  if (*(v0 + v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + v6);
  }

  return MEMORY[0x2821FE8E8](v0, v6 + 32, v2 | 7);
}

uint64_t sub_249405DEC()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_249405E34()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249405E6C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_249405EC4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249405F04()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249405F70@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_249405F9C@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_24940601C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static DuplicateItemsIntent.openAppWhenRun;
  return result;
}

uint64_t sub_249406068(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static DuplicateItemsIntent.openAppWhenRun = v1;
  return result;
}

uint64_t sub_24940617C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2494061A8@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2494061DC@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_249406250@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_249406350()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_249406388@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fittingHeight];
  *a2 = v4;
  return result;
}

uint64_t sub_2494063D0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249406418@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t sub_2494064D8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249406510()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_249406558()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249406590()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCSgs5Error_pGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249406628()
{

  outlined consume of DOCSidebarItem(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24940667C()
{
  outlined consume of DOCSidebarItem(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_2494066D0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249406718()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_249406750()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249406788()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2494067D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249406808()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24940684C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24940688C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2494068E0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id _sSo8NSStringC26DocumentManagerExecutables33BidiDirectionalIsolationReturningA2cDP09wrappedInfG0y1TQzAC10DOCUnicodeC0K15LayoutDirectionOFTW_0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*v2 wrappedInDirectionalIsolation_];
  *a2 = result;
  return result;
}

uint64_t sub_2494069B4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2494069EC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249406A34()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}