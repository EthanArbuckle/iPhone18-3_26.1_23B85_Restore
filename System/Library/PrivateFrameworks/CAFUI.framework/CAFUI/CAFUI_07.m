void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x245D0D8B0](a1, a2, v7);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v15;
    v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
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

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

unint64_t specialized closure #1 in BidirectionalCollection.last(where:)@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x245D0D9A0](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

id specialized static CAFUITileViewController.compositionalLayout(isRHD:dataSource:)(char a1)
{
  type metadata accessor for CAFUITileViewCollectionViewData();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = a1;
  v5 = objc_allocWithZone(MEMORY[0x277D752C0]);

  v6 = [v5 init];
  [v6 setInterSectionSpacing_];
  [v6 setContentInsetsReference_];
  v7 = type metadata accessor for CAFUITileViewCompositionalLayout();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC5CAFUIP33_81CEDCC541A633F7CC5FD11DB3C3FABC32CAFUITileViewCompositionalLayout_data] = v2;
  aBlock[4] = partial apply for closure #1 in static CAFUITileViewController.compositionalLayout(isRHD:dataSource:);
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?);
  aBlock[3] = &block_descriptor_120_0;
  v9 = _Block_copy(aBlock);

  v12.receiver = v8;
  v12.super_class = v7;
  v10 = objc_msgSendSuper2(&v12, sel_initWithSectionProvider_configuration_, v9, v6);

  _Block_release(v9);
  return v10;
}

uint64_t sub_242403008()
{
  MEMORY[0x245D0E610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized CAFUITileViewController.collectionView(_:shouldHighlightItemAt:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = CAFUITileDataSource.setting(at:)(a1);

  if (v6)
  {
    swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    if (v7)
    {
      if (*(v2 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache) && (v8 = v7, v9 = v6, v10 = CAFUISettingsCache.hasAnyDisabledAncestor(_:)(v9), v9, (v10 & 1) == 0) && (ObjectType = swift_getObjectType(), ((*(v8 + 56))(ObjectType, v8) & 1) != 0))
      {
        v12 = (*(v8 + 40))(ObjectType, v8);
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

void outlined consume of CAFUICellSelectionAction(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
  }
}

id outlined copy of CAFUICellSelectionAction(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  if (a3 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t specialized CAFUITileViewController.punchThroughController(_:didDismissPunchThroughWithIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_presentedPTIdentifier);
  v6 = *(v2 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_presentedPTIdentifier + 8);
  if (v6 && (*v5 == a1 ? (v7 = v6 == a2) : (v7 = 0), v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    _StringGuts.grow(_:)(16);

    strcpy(v9, "Dismissed PT ");
    HIWORD(v9[1]) = -4864;
    MEMORY[0x245D0D240](a1, a2);
    MEMORY[0x245D0D240](33, 0xE100000000000000);
    specialized static CAFUILogger.default(_:function:file:line:)(v9[0], v9[1], 0xD00000000000003FLL, 0x800000024242D130, 694);

    *(v2 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_punchThroughState) = 1;
    *v5 = 0;
    v5[1] = 0;
  }

  else
  {
    _StringGuts.grow(_:)(19);

    MEMORY[0x245D0D240](a1, a2);
    MEMORY[0x245D0D240](0x20746F6E20736920, 0xEE002E6E776F6E6BLL);
    specialized static CAFUILogger.default(_:function:file:line:)(2118736, 0xE300000000000000, 0xD00000000000003FLL, 0x800000024242D130, 698);
  }
}

uint64_t sub_242403478()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_8Tm()
{

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_242403568@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2424035B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_242403608@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_242403658@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2424036A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_242403700@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_242403758(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 88) = v2;
  return result;
}

uint64_t sub_24240379C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2424037F4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 89) = v2;
  return result;
}

uint64_t sub_242403838@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_242403890@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2424038E8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 112) = v2;
  return result;
}

uint64_t sub_24240392C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 392))();
  *a2 = result;
  return result;
}

uint64_t sub_242403984@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_assetManager;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_2424039E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_242403EB8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_12Tm(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

void outlined consume of CAFUIAutomakerSettingsSection?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a6)
  {
  }
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C6C616D73;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656772616CLL;
    }

    else
    {
      v4 = 0x7469617274726F70;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6D756964656DLL;
    }

    else
    {
      v4 = 0x6C6C616D73;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x656772616CLL;
  if (a2 != 2)
  {
    v8 = 0x7469617274726F70;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x6D756964656DLL;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2 == 2)
    {
      v4 = 0x8000000242428BB0;
    }

    else
    {
      v4 = 0x8000000242428BD0;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x527463656E6E6F43;
    }

    else
    {
      v3 = 0x7964616552;
    }

    if (v2)
    {
      v4 = 0xEE00747365757165;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (a2 == 2)
    {
      v6 = 0x8000000242428BB0;
    }

    else
    {
      v6 = 0x8000000242428BD0;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x527463656E6E6F43;
    }

    else
    {
      v5 = 0x7964616552;
    }

    if (a2)
    {
      v6 = 0xEE00747365757165;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

id closure #1 in CAFUIDevicePickerController.presentDevicePickerLimitedUI(for:navigationController:)(void *a1)
{
  result = [a1 isNavigationBarHidden];
  if ((result & 1) == 0)
  {

    return [a1 setNavigationBarHidden:1 animated:1];
  }

  return result;
}

id closure #2 in CAFUIDevicePickerController.presentDevicePickerLimitedUI(for:navigationController:)(void *a1)
{

  return [a1 setNavigationBarHidden:0 animated:1];
}

uint64_t key path setter for CAFUIDevicePickerViewController.delegate : CAFUIDevicePickerViewController(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_delegate);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t CAFUIDevicePickerViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_delegate);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

double CAFUIDevicePickerViewController.cellSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___cellSize;
  if ((*(v0 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___cellSize + 16) & 1) == 0)
  {
    return *v1;
  }

  result = dbl_242427D18[CAFUIDevicePickerViewController.layoutStyle.getter()];
  *v1 = result;
  *(v1 + 8) = 0x4065800000000000;
  *(v1 + 16) = 0;
  return result;
}

uint64_t CAFUIDevicePickerViewController.rows.getter()
{
  v1 = &v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___rows];
  if (v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___rows + 8] != 1)
  {
    return *v1;
  }

  if ((CAFUIDevicePickerViewController.isPortraitLayout.getter() & 1) == 0)
  {
    result = 1;
LABEL_9:
    *v1 = result;
    v1[8] = 0;
    return result;
  }

  result = [v0 collectionView];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12.origin.x = v5;
    v12.origin.y = v7;
    v12.size.width = v9;
    v12.size.height = v11;
    if (CGRectGetHeight(v12) < 636.0)
    {
      result = 2;
    }

    else
    {
      result = 3;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t CAFUIDevicePickerViewController.columns.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___columns);
  if (*(v0 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___columns + 8) != 1)
  {
    return *v1;
  }

  v2 = CAFUIDevicePickerViewController.layoutStyle.getter();
  if (v2 == 3 || v2 == 0)
  {
    result = 2;
  }

  else
  {
    result = 3;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t CAFUIDevicePickerViewController.layoutStyle.getter()
{
  v1 = OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___layoutStyle;
  result = *(v0 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___layoutStyle);
  if (result == 4)
  {
    result = CAFUIDevicePickerViewController.calculateLayoutStyle()();
    *(v0 + v1) = result;
  }

  return result;
}

uint64_t CAFUIDevicePickerViewController.calculateLayoutStyle()()
{
  if (CAFUIDevicePickerViewController.isPortraitLayout.getter())
  {
    return 3;
  }

  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;

    if (v4 >= 800.0)
    {
      return 2;
    }

    result = [v0 collectionView];
    if (result)
    {
      v5 = result;
      [result bounds];
      v7 = v6;

      return v7 >= 527.0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t CAFUIDevicePickerViewController.isPortraitLayout.getter()
{
  v1 = OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___isPortraitLayout;
  v2 = *(v0 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___isPortraitLayout);
  if (v2 == 2)
  {
    LOBYTE(v2) = CAFUIDevicePickerViewController.checkIfIsPortraitLayout()();
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

id CAFUIDevicePickerViewController.checkIfIsPortraitLayout()()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = result;
  [result bounds];
  v4 = v3;

  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  [result bounds];
  v7 = v6;

  if (v7 >= v4)
  {
    return 0;
  }

  result = [v0 collectionView];
  if (!result)
  {
    goto LABEL_11;
  }

  v8 = result;
  [result bounds];
  v10 = v9;

  if (v10 < 404.0)
  {
    return 0;
  }

  result = [v0 collectionView];
  if (result)
  {
    v11 = result;
    [result bounds];
    v13 = v12;

    return (v13 >= 460.0);
  }

LABEL_12:
  __break(1u);
  return result;
}

Swift::Void __swiftcall CAFUIDevicePickerViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CAFUIDevicePickerViewController();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1);
  CAFUIDevicePickerViewController.updatePTButton()();
}

uint64_t type metadata accessor for CAFUIDevicePickerViewController()
{
  result = type metadata singleton initialization cache for CAFUIDevicePickerViewController;
  if (!type metadata singleton initialization cache for CAFUIDevicePickerViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL CAFUIDevicePickerViewController.isDeviceManagerPTAvailable.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_requestContentManager))
  {
    return 1;
  }

  v1._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  CAFUIRequestContentManager.state(for:)(v1);

  return v3 != 0;
}

uint64_t CAFUIDevicePickerViewController.cellIdentifier.getter()
{
  type metadata accessor for CAFUIDevicePickerViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

char *CAFUIDevicePickerViewController.__allocating_init(requestContentManager:pairedDevices:carSession:)(uint64_t a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized CAFUIDevicePickerViewController.init(requestContentManager:pairedDevices:carSession:)(a1, a2, a3);

  return v8;
}

char *CAFUIDevicePickerViewController.init(requestContentManager:pairedDevices:carSession:)(uint64_t a1, void *a2, void *a3)
{
  v5 = specialized CAFUIDevicePickerViewController.init(requestContentManager:pairedDevices:carSession:)(a1, a2, a3);

  return v5;
}

void closure #1 in CAFUIDevicePickerViewController.init(requestContentManager:pairedDevices:carSession:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CAFUIDevicePickerViewController.updateDevicePickerLimitedUI()();
  }
}

Swift::Void __swiftcall CAFUIDevicePickerViewController.updateDevicePickerLimitedUI()()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_31;
  }

  v2 = v1;
  v3 = OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_carSession;
  v4 = *&v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_carSession];
  if (v4)
  {
    v5 = v4;
    v6 = [v5 limitUserInterfaces];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 BOOLValue];

      if (v8)
      {
        v9 = [v5 configuration];
        v10 = [v9 limitableUserInterfaces];

        v11 = (v10 & 0x40) == 0;
        goto LABEL_8;
      }
    }
  }

  v11 = 1;
LABEL_8:
  [v2 setAllowsFocus_];

  v12 = [v0 collectionView];
  if (!v12)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v13 = v12;
  [v12 setNeedsFocusUpdate];

  v14 = *&v0[v3];
  if (!v14)
  {
LABEL_18:
    v28 = [v0 navigationController];
    if (v28)
    {
      v29 = v28;
      [v28 setNavigationBarHidden:0 animated:0];
    }

    v30 = OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_limitedUIView;
    v31 = *&v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_limitedUIView];
    if (v31)
    {
      [v31 removeFromSuperview];
      v31 = *&v0[v30];
    }

    *&v0[v30] = 0;
    goto LABEL_23;
  }

  v15 = v14;
  v16 = [v15 limitUserInterfaces];
  if (!v16 || (v17 = v16, v18 = [v16 BOOLValue], v17, !v18))
  {

    goto LABEL_18;
  }

  v19 = [v15 configuration];
  v20 = [v19 limitableUserInterfaces];

  if ((v20 & 0x40) == 0)
  {
    goto LABEL_18;
  }

  v21 = [v0 navigationController];
  if (!v21)
  {
    goto LABEL_18;
  }

  v34 = v21;
  v22 = [v0 view];
  if (!v22)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = _s5CAFUI27CAFUIDevicePickerControllerPAAE013presentDeviceC9LimitedUI3for010navigationD0So6UIViewCAH_So012UINavigationD0CtFAA0bc4ViewD0C_Tt1g5(v22, v34);

  v25 = OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_limitedUIView;
  v26 = *&v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_limitedUIView];
  if (v26)
  {
    [v26 removeFromSuperview];
    v27 = *&v0[v25];
  }

  else
  {
    v27 = 0;
  }

  *&v0[v25] = v24;

  if (*&v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_requestContentManager])
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    CAFUIRequestContentManager.dismiss(identifier:completion:)(v32, v33, closure #1 in CAFUIDevicePickerViewController.updateDevicePickerLimitedUI(), 0);
  }

  v31 = v34;
LABEL_23:
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ()(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t CAFUIDevicePickerViewController.__ivar_destroyer()
{
  swift_unknownObjectRelease();

  outlined destroy of RequestTemporaryContentModel?(v0 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_spinningCellIndexPath, &_s10Foundation9IndexPathVSgMd);
}

id CAFUIDevicePickerViewController.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CAFUIDevicePickerViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Void __swiftcall CAFUIDevicePickerViewController.viewDidLoad()()
{
  v33.receiver = v0;
  v33.super_class = type metadata accessor for CAFUIDevicePickerViewController();
  objc_msgSendSuper2(&v33, sel_viewDidLoad);
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = v1;
  v3 = [v1 collectionViewLayout];

  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setScrollDirection_];

  v4 = [v0 collectionView];
  if (!v4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = v4;
  v6 = [v4 collectionViewLayout];

  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setMinimumLineSpacing_];

  v7 = [v0 collectionView];
  if (!v7)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = v7;
  v9 = [v7 collectionViewLayout];

  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setSectionInsetReference_];

  v10 = [v0 collectionView];
  if (!v10)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = v10;
  v12 = [v10 collectionViewLayout];

  objc_opt_self();
  v13 = swift_dynamicCastObjCClassUnconditional();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2424235A0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 96) = MEMORY[0x277D84CC0];
  *(inited + 72) = 0;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of RequestTemporaryContentModel?(inited + 32, &_ss11AnyHashableV_yptMd);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v13 _setRowAlignmentsOptions_];

  v16 = [v0 collectionView];
  if (!v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = v16;
  [v16 setShowsVerticalScrollIndicator_];

  v18 = [v0 collectionView];
  if (!v18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v19 = v18;
  [v18 setPagingEnabled_];

  v20 = [v0 collectionView];
  if (!v20)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = v20;
  v22 = objc_opt_self();
  v23 = [v22 clearColor];
  [v21 setBackgroundColor_];

  v24 = [v0 collectionView];
  if (!v24)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v25 = v24;
  [v24 setContentInset_];

  v26 = _UISolariumEnabled();
  v27 = [v0 view];
  v28 = v27;
  if (v26)
  {
    if (v27)
    {
      v29 = [v22 clearColor];
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  if (!v27)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v29 = [v22 tableBackgroundColor];
  if (!v29)
  {
LABEL_27:
    __break(1u);
    return;
  }

LABEL_14:
  v30 = v29;
  [v28 setBackgroundColor_];

  CAFUIDevicePickerViewController.updateDevicePickerLimitedUI()();
  v31 = [v0 navigationController];
  if (v31)
  {
    v32 = v31;
    [v31 setDelegate_];
  }
}

Swift::Void __swiftcall CAFUIDevicePickerViewController.viewDidLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for CAFUIDevicePickerViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLayoutSubviews);
  CAFUIDevicePickerViewController.updateFlowLayout()();
  CAFUIDevicePickerViewController.updatePageControl()();
}

void CAFUIDevicePickerViewController.updateFlowLayout()()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.default;
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24234D000, v1, v2, "Updating flow layout", v3, 2u);
    MEMORY[0x245D0E5A0](v3, -1, -1);
  }

  v4 = [v0 collectionView];
  if (!v4)
  {
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v5 = v4;
  v6 = [v4 collectionViewLayout];

  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() minimumInteritemSpacing];
  v8 = v7;

  if ((CAFUIDevicePickerViewController.isPortraitLayout.getter() & 1) == 0)
  {
    if (v8 != 20.0)
    {
      goto LABEL_8;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_19;
  }

  if (v8 == 60.0)
  {
    goto LABEL_18;
  }

LABEL_8:
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134218240;
    v11 = [v0 collectionView];
    if (!v11)
    {
LABEL_89:
      __break(1u);
      return;
    }

    v12 = v11;
    v13 = [v11 collectionViewLayout];

    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() minimumInteritemSpacing];
    v15 = v14;

    *(v10 + 4) = v15;
    *(v10 + 12) = 2048;
    v16 = 60.0;
    if ((v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___isPortraitLayout] & 1) == 0)
    {
      v16 = 20.0;
    }

    *(v10 + 14) = v16;
    _os_log_impl(&dword_24234D000, v1, v9, "Interitem spacing updated from: %f to %f", v10, 0x16u);
    MEMORY[0x245D0E5A0](v10, -1, -1);
  }

  v17 = [v0 collectionView];
  if (!v17)
  {
    goto LABEL_87;
  }

  v18 = v17;
  v19 = [v17 collectionViewLayout];

  objc_opt_self();
  v20 = swift_dynamicCastObjCClassUnconditional();
  v21 = 60.0;
  if ((v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___isPortraitLayout] & 1) == 0)
  {
    v21 = 20.0;
  }

  [v20 setMinimumInteritemSpacing_];

  v22 = 1;
LABEL_19:
  v23 = CAFUIDevicePickerViewController.calculateLayoutStyle()();
  v24 = CAFUIDevicePickerViewController.layoutStyle.getter();
  if ((specialized == infix<A>(_:_:)(v23, v24) & 1) == 0)
  {
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v100 = v27;
      *v26 = 136315394;
      if (v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___layoutStyle] > 1u)
      {
        if (v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___layoutStyle] == 2)
        {
          v28 = 0xE500000000000000;
          v29 = 0x656772616CLL;
        }

        else
        {
          v28 = 0xE800000000000000;
          v29 = 0x7469617274726F70;
        }
      }

      else if (v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___layoutStyle])
      {
        v28 = 0xE600000000000000;
        v29 = 0x6D756964656DLL;
      }

      else
      {
        v28 = 0xE500000000000000;
        v29 = 0x6C6C616D73;
      }

      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &v100);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = 0xE500000000000000;
      v32 = 0xE500000000000000;
      v33 = 0x656772616CLL;
      if (v23 != 2)
      {
        v33 = 0x7469617274726F70;
        v32 = 0xE800000000000000;
      }

      v34 = 0x6D756964656DLL;
      if (v23)
      {
        v31 = 0xE600000000000000;
      }

      else
      {
        v34 = 0x6C6C616D73;
      }

      if (v23 <= 1u)
      {
        v35 = v34;
      }

      else
      {
        v35 = v33;
      }

      if (v23 <= 1u)
      {
        v36 = v31;
      }

      else
      {
        v36 = v32;
      }

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v100);

      *(v26 + 14) = v37;
      _os_log_impl(&dword_24234D000, v1, v25, "Layout style updated from: %s to %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D0E5A0](v27, -1, -1);
      MEMORY[0x245D0E5A0](v26, -1, -1);
    }

    v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___layoutStyle] = v23;
    v22 = 1;
  }

  v38 = CAFUIDevicePickerViewController.checkIfIsPortraitLayout()();
  v39 = OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___isPortraitLayout;
  if ((v38 & 1) != (v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___isPortraitLayout] & 1))
  {
    v40 = v38;
    v41 = v0;
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 67109376;
      *(v43 + 4) = v0[v39] & 1;

      *(v43 + 8) = 1024;
      *(v43 + 10) = v40 & 1;
      _os_log_impl(&dword_24234D000, v1, v42, "Is portrait layout updated from: %{BOOL}d to %{BOOL}d", v43, 0xEu);
      MEMORY[0x245D0E5A0](v43, -1, -1);
    }

    else
    {
    }

    v0[v39] = v40 & 1;
    v22 = 1;
    if (v40)
    {
      goto LABEL_48;
    }

LABEL_45:
    v44 = 1;
    goto LABEL_52;
  }

  if ((v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___isPortraitLayout] & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_48:
  v45 = [v0 collectionView];
  if (!v45)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v46 = v45;
  [v45 bounds];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  v104.origin.x = v48;
  v104.origin.y = v50;
  v104.size.width = v52;
  v104.size.height = v54;
  if (CGRectGetHeight(v104) >= 636.0)
  {
    v44 = 3;
  }

  else
  {
    v44 = 2;
  }

LABEL_52:
  if (v44 != CAFUIDevicePickerViewController.rows.getter())
  {
    v55 = v0;
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 134218240;
      *(v57 + 4) = *&v55[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___rows];

      *(v57 + 12) = 2048;
      *(v57 + 14) = v44;
      _os_log_impl(&dword_24234D000, v1, v56, "Amount of rows updated from: %ld to %ld", v57, 0x16u);
      MEMORY[0x245D0E5A0](v57, -1, -1);
    }

    else
    {
    }

    v58 = &v55[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___rows];
    *v58 = v44;
    v58[8] = 0;
    v22 = 1;
  }

  v59 = OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___layoutStyle;
  v60 = v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___layoutStyle];
  if (v60 == 3 || v60 == 0)
  {
    v62 = 2;
  }

  else
  {
    v62 = 3;
  }

  if (v62 != CAFUIDevicePickerViewController.columns.getter())
  {
    v63 = v0;
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 134218240;
      *(v65 + 4) = *&v63[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___columns];

      *(v65 + 12) = 2048;
      *(v65 + 14) = v62;
      _os_log_impl(&dword_24234D000, v1, v64, "Amount of columns updated from: %ld to %ld", v65, 0x16u);
      MEMORY[0x245D0E5A0](v65, -1, -1);
    }

    else
    {
    }

    v66 = &v63[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___columns];
    *v66 = v62;
    v66[8] = 0;
    v22 = 1;
  }

  v67 = dbl_242427D18[v0[v59]];
  v68 = [v0 collectionView];
  if (!v68)
  {
    goto LABEL_83;
  }

  v69 = v68;
  v70 = [v68 &selRef_mainBundle + 2];

  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() itemSize];
  v72 = v71;
  v74 = v73;

  if (v72 == v67 && v74 == 172.0)
  {
    if (!v22)
    {
      return;
    }
  }

  else
  {
    v75 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v100 = v77;
      *v76 = 136315394;
      v78 = [v0 collectionView];
      if (!v78)
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v79 = v78;
      v80 = [v78 &selRef_mainBundle + 2];

      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() itemSize];
      v82 = v81;
      v84 = v83;

      v102.width = v82;
      v102.height = v84;
      v85 = NSStringFromCGSize(v102);
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;

      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, &v100);

      *(v76 + 4) = v89;
      *(v76 + 12) = 2080;
      v103.height = 172.0;
      v103.width = v67;
      v90 = NSStringFromCGSize(v103);
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;

      v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, &v100);

      *(v76 + 14) = v94;
      _os_log_impl(&dword_24234D000, v1, v75, "Flow layout item size updated from: %s to: %s", v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D0E5A0](v77, -1, -1);
      MEMORY[0x245D0E5A0](v76, -1, -1);
    }

    v95 = [v0 collectionView];
    if (!v95)
    {
      goto LABEL_86;
    }

    v96 = v95;
    v97 = [v95 &selRef_mainBundle + 2];

    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setItemSize_];
  }

  v98 = [v0 collectionView];
  if (!v98)
  {
    goto LABEL_84;
  }

  v99 = v98;
  [v98 reloadData];
}

uint64_t CAFUIDevicePickerViewController.updatePageControl()()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.default;
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24234D000, v1, v2, "Updating page control", v3, 2u);
    MEMORY[0x245D0E5A0](v3, -1, -1);
  }

  result = [v0 collectionView];
  if (!result)
  {
    goto LABEL_51;
  }

  v5 = result;
  v6 = OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_items;
  swift_beginAccess();
  v7 = *(*&v0[v6] + 16);
  v8 = CAFUIDevicePickerViewController.rows.getter();
  result = CAFUIDevicePickerViewController.columns.getter();
  if ((v8 * result) >> 64 != (v8 * result) >> 63)
  {
    __break(1u);
    goto LABEL_36;
  }

  v9 = ceil(v7 / (v8 * result));
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  [v5 setScrollEnabled_];

  v10 = OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_pageControl;
  result = *&v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_pageControl];
  if (result)
  {
    v11 = *&v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___rows];
    v12 = *&v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___columns];
    if ((v11 * v12) >> 64 != (v11 * v12) >> 63)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v13 = ceil(*(*&v0[v6] + 16) / (v11 * v12));
    if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v13 <= -9.22337204e18)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v13 >= 9.22337204e18)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    result = [result setHidden_];
  }

  v14 = OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___rows;
  v15 = *&v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___rows];
  v16 = OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___columns;
  v17 = *&v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___columns];
  v18 = v15 * v17;
  v19 = (v15 * v17) >> 64;
  v20 = v19 == v18 >> 63;
  v21 = v19 != v18 >> 63;
  if (!v20)
  {
    goto LABEL_39;
  }

  v22 = ceil(*(*&v0[v6] + 16) / v18);
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v22 >= 2)
  {
    result = *&v0[v10];
    if (!result)
    {
      v23 = [objc_allocWithZone(MEMORY[0x277D757E0]) init];
      v24 = objc_opt_self();
      v25 = [v24 labelColor];
      [v23 setCurrentPageIndicatorTintColor_];

      v26 = [v24 labelColor];
      v27 = [v26 colorWithAlphaComponent_];

      [v23 setPageIndicatorTintColor_];
      v28 = v23;
      [v28 setUserInteractionEnabled_];
      [v28 setTranslatesAutoresizingMaskIntoConstraints_];
      [v28 setBackgroundStyle_];
      result = [v0 view];
      if (!result)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v29 = result;
      result = [v0 collectionView];
      if (!result)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v30 = result;
      v49 = v16;
      v50 = v14;
      [v29 insertSubview:v28 belowSubview:result];

      v31 = *&v0[v10];
      *&v0[v10] = v28;
      v32 = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_242423B80;
      v34 = [v32 centerXAnchor];
      result = [v0 view];
      if (!result)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v35 = result;
      v36 = [result safeAreaLayoutGuide];

      v37 = [v36 centerXAnchor];
      v38 = [v34 constraintEqualToAnchor_];

      *(v33 + 32) = v38;
      v39 = [v32 bottomAnchor];

      result = [v0 view];
      if (!result)
      {
LABEL_55:
        __break(1u);
        return result;
      }

      v40 = result;
      v41 = objc_opt_self();
      v42 = [v40 safeAreaLayoutGuide];

      v43 = [v42 bottomAnchor];
      v44 = [v39 constraintEqualToAnchor:v43 constant:-6.0];

      *(v33 + 40) = v44;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v41 activateConstraints_];

      result = *&v0[v10];
      if (!result)
      {
        return result;
      }

      v46 = *&v0[v50];
      v47 = *&v0[v49];
      v18 = v46 * v47;
      v21 = (v46 * v47) >> 64 != (v46 * v47) >> 63;
    }

    if (v21)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v48 = ceil(*(*&v0[v6] + 16) / v18);
    if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (v48 <= -9.22337204e18)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v48 >= 9.22337204e18)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    return [result setNumberOfPages_];
  }

  return result;
}

Swift::Void __swiftcall CAFUIDevicePickerViewController.updateEmptyView(title:)(Swift::String_optional title)
{
  v1 = MEMORY[0x245D0D180](0x43495645445F4F4ELL, 0xEA00000000005345);
  v2 = CAFUILocalizedStringForKey(v1);

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6.value._countAndFlagsBits = v3;
  v6.value._object = v5;
  CAFUICollectionViewController.updateEmptyView(title:)(v6);
}

double CAFUIDevicePickerViewController.collectionView(_:layout:minimumInteritemSpacingForSectionAt:)()
{
  v0 = CAFUIDevicePickerViewController.isPortraitLayout.getter();
  result = 60.0;
  if ((v0 & 1) == 0)
  {
    return 20.0;
  }

  return result;
}

uint64_t CAFUIDevicePickerViewController.collectionView(_:cellForItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v110 = type metadata accessor for IndexPath();
  v6 = *(v110 - 8);
  v7 = MEMORY[0x28223BE20](v110);
  v9 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v106 - v11;
  MEMORY[0x28223BE20](v10);
  v109 = (&v106 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v14 - 8);
  v108 = &v106 - v15;
  type metadata accessor for CAFUIDevicePickerViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v17)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = MEMORY[0x245D0D180](v18);
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v20 = [a1 dequeueReusableCellWithReuseIdentifier:v17 forIndexPath:isa];

  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    v23 = CAFUIDevicePickerViewController.adjustedIndex(for:)(a2);
    v24 = OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_items;
    swift_beginAccess();
    v25 = *(v3 + v24);
    if (v23 >= *(v25 + 16))
    {
      if (one-time initialization token for default == -1)
      {
LABEL_14:
        v45 = static OS_os_log.default;
        v46 = v110;
        (*(v6 + 16))(v9, a2, v110);
        v47 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v115[0] = v49;
          *v48 = 136315394;
          lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
          v50 = dispatch thunk of CustomStringConvertible.description.getter();
          v51 = v46;
          v53 = v52;
          (*(v6 + 8))(v9, v51);
          v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v53, v115);

          *(v48 + 4) = v54;
          *(v48 + 12) = 2048;
          *(v48 + 14) = v23;
          _os_log_impl(&dword_24234D000, v45, v47, "Hiding cell for index path: %s, with adjusted index: %ld", v48, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v49);
          MEMORY[0x245D0E5A0](v49, -1, -1);
          MEMORY[0x245D0E5A0](v48, -1, -1);
        }

        else
        {
          (*(v6 + 8))(v9, v46);
        }

        [v22 setHidden_];
        return v22;
      }
    }

    else
    {
      if ((v23 & 0x8000000000000000) == 0)
      {
        v107 = v6;
        outlined init with copy of CAFUIImageRepresentableItemProtocol(v25 + 40 * v23 + 32, v115);
        v26 = CAFUIDevicePickerViewController.device(at:)(v23);
        v27 = [v26 identifier];
        if (!v27)
        {
          goto LABEL_16;
        }

        v28 = v27;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v22;
        v31 = v23;
        v32 = v26;
        v34 = v33;

        v35 = HIBYTE(v34) & 0xF;
        v36 = (v34 & 0x2000000000000000) == 0;
        v26 = v32;
        v23 = v31;
        v22 = v30;
        if (v36)
        {
          v35 = v29 & 0xFFFFFFFFFFFFLL;
        }

        if (!v35)
        {
LABEL_16:
          if (one-time initialization token for default != -1)
          {
            swift_once();
          }

          v55 = static OS_os_log.default;
          v56 = v107;
          v57 = v110;
          (*(v107 + 16))(v12, a2, v110);
          v58 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v55, v58))
          {
            v109 = v55;
            v59 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            v112[0] = v106;
            *v59 = 136315650;
            v108 = v26;
            v60 = [v26 name];
            if (v60)
            {
              v61 = v60;
              v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v64 = v63;
            }

            else
            {
              v64 = 0xE300000000000000;
              v62 = 7104878;
            }

            v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v112);

            *(v59 + 4) = v75;
            *(v59 + 12) = 2080;
            lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
            v76 = v110;
            v77 = dispatch thunk of CustomStringConvertible.description.getter();
            v79 = v78;
            (*(v56 + 8))(v12, v76);
            v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, v112);

            *(v59 + 14) = v80;
            *(v59 + 22) = 2048;
            *(v59 + 24) = v23;
            _os_log_impl(&dword_24234D000, v109, v58, "No device identifier for device name: %s at indexPath: %s, with adjusted index: %ld", v59, 0x20u);
            v81 = v106;
            swift_arrayDestroy();
            MEMORY[0x245D0E5A0](v81, -1, -1);
            MEMORY[0x245D0E5A0](v59, -1, -1);
            v26 = v108;
          }

          else
          {
            (*(v56 + 8))(v12, v57);
          }

          v82 = v20;
          [v22 setHidden_];

          goto LABEL_45;
        }

        v37 = v116;
        v38 = v117;
        __swift_project_boxed_opaque_existential_1(v115, v116);
        v39 = (*(v38 + 24))(v37, v38);
        v40 = CAFUIDevicePickerViewController.layoutStyle.getter();
        CAFUIDevicePickerViewCell.configure(with:selectedImage:for:device:)(v115, v39, v40, v26);

        [v30 setSelected_];
        v41 = v20;
        [v30 setHidden_];
        if ([v26 state] == 2 && *(*(v3 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_connectedDeviceSupportedActions) + 16))
        {
          v42 = 1;
          v43 = 1;
          v44 = v110;
        }

        else
        {
          v65 = [v26 state];
          v44 = v110;
          if (v65 == 2 || (v66 = [*(v3 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_pairedDevices) pairedDevicesAction], v67 = objc_msgSend(v66, sel_hasConnectDevice), v66, (v67 & 1) == 0))
          {
            v42 = 0;
            v43 = 2;
          }

          else
          {
            v43 = 1;
            v42 = 1;
          }
        }

        v68 = v107;
        [v22 setUserInteractionEnabled_];

        [*&v22[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_label] setEnabled_];
        [*&v22[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_avatarView] setTintAdjustmentMode_];
        v69 = [v26 identifier];
        if (v69)
        {
          v70 = v69;
          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v72;

          v74 = *(v3 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_deviceIDInProcess + 8);
          if (v74)
          {
            if (v71 == *(v3 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_deviceIDInProcess) && v74 == v73)
            {

LABEL_38:
              v84 = v22[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_showSpinner];
              v22[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_showSpinner] = 1;
              CAFUIDevicePickerViewCell.showSpinner.didset(v84);
              v85 = v108;
              (*(v68 + 16))(v108, a2, v44);
              (*(v68 + 56))(v85, 0, 1, v44);
              v86 = OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_spinningCellIndexPath;
              swift_beginAccess();
              outlined assign with take of IndexPath?(v85, v3 + v86);
              swift_endAccess();
LABEL_40:
              v88 = v109;
              if (one-time initialization token for default != -1)
              {
                swift_once();
              }

              v89 = static OS_os_log.default;
              (*(v68 + 16))(v88, a2, v44);
              outlined init with copy of CAFUIImageRepresentableItemProtocol(v115, v112);
              v90 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v89, v90))
              {
                v91 = swift_slowAlloc();
                v92 = swift_slowAlloc();
                v111 = v92;
                *v91 = 136315650;
                lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
                v93 = dispatch thunk of CustomStringConvertible.description.getter();
                v94 = v44;
                v95 = v93;
                v108 = v26;
                v97 = v96;
                (*(v68 + 8))(v88, v94);
                v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, &v111);

                *(v91 + 4) = v98;
                *(v91 + 12) = 2048;
                *(v91 + 14) = v23;
                *(v91 + 22) = 2080;
                v99 = v113;
                v100 = v114;
                __swift_project_boxed_opaque_existential_1(v112, v113);
                v101 = (*(v100 + 8))(v99, v100);
                v103 = v102;
                __swift_destroy_boxed_opaque_existential_0(v112);
                v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v103, &v111);

                *(v91 + 24) = v104;
                _os_log_impl(&dword_24234D000, v89, v90, "Returning cell for index path: %s, with adjusted index: %ld, item: %s)", v91, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x245D0E5A0](v92, -1, -1);
                MEMORY[0x245D0E5A0](v91, -1, -1);
              }

              else
              {

                (*(v68 + 8))(v88, v44);
                __swift_destroy_boxed_opaque_existential_0(v112);
              }

LABEL_45:
              __swift_destroy_boxed_opaque_existential_0(v115);
              return v22;
            }

            v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v83)
            {
              goto LABEL_38;
            }
          }

          else
          {
          }
        }

        v87 = v22[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_showSpinner];
        v22[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_showSpinner] = 0;
        CAFUIDevicePickerViewCell.showSpinner.didset(v87);
        goto LABEL_40;
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_14;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CAFUIDevicePickerViewController.adjustedIndex(for:)(uint64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CAFUIDevicePickerViewController.isPortraitLayout.getter())
  {
    v7 = IndexPath.item.getter();
    result = CAFUIDevicePickerViewController.rows.getter();
    if (!result)
    {
      __break(1u);
      goto LABEL_25;
    }

    v9 = result;
    if (v7 == 0x8000000000000000 && result == -1)
    {
      goto LABEL_33;
    }

    result = IndexPath.item.getter();
    v10 = OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___rows;
    v11 = *&v1[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___rows];
    if (!v11)
    {
      goto LABEL_27;
    }

    if (result == 0x8000000000000000 && v11 == -1)
    {
      goto LABEL_34;
    }

    v12 = result % v11;
    result = CAFUIDevicePickerViewController.columns.getter();
    v13 = v12 * result;
    if ((v12 * result) >> 64 != (v12 * result) >> 63)
    {
      goto LABEL_29;
    }

    v14 = __OFADD__(v13, v7 / v9);
    v15 = v13 + v7 / v9;
    if (v14)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    result = IndexPath.section.getter();
    v16 = *&v1[v10];
    v17 = *&v1[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___columns];
    v18 = v16 * v17;
    if ((v16 * v17) >> 64 != (v16 * v17) >> 63)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v19 = result * v18;
    if ((result * v18) >> 64 != (result * v18) >> 63)
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

    v14 = __OFADD__(v15, v19);
    v20 = v15 + v19;
    if (!v14)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  v21 = IndexPath.row.getter();
  v22 = IndexPath.section.getter();
  v23 = CAFUIDevicePickerViewController.rows.getter();
  result = CAFUIDevicePickerViewController.columns.getter();
  v24 = v23 * result;
  if ((v23 * result) >> 64 != (v23 * result) >> 63)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v25 = v22 * v24;
  if ((v22 * v24) >> 64 != (v22 * v24) >> 63)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v14 = __OFADD__(v21, v25);
  v20 = v21 + v25;
  if (v14)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_18:
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v26 = static OS_os_log.default;
  (*(v4 + 16))(v6, a1, v3);
  v27 = v1;
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v30;
    *v29 = 134218498;
    *(v29 + 4) = v20;
    *(v29 + 12) = 2080;
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v3;
    v34 = v33;
    (*(v4 + 8))(v6, v32);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v34, &v37);

    *(v29 + 14) = v35;
    *(v29 + 22) = 1024;
    LOBYTE(v35) = v27[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___isPortraitLayout];

    *(v29 + 24) = v35 & 1;
    _os_log_impl(&dword_24234D000, v26, v28, "Returning adjusted index: %ld for indexPath: %s. isPortraitLayout: %{BOOL}d", v29, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x245D0E5A0](v30, -1, -1);
    MEMORY[0x245D0E5A0](v29, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  return v20;
}

uint64_t CAFUIDevicePickerViewController.device(at:)(unint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_pairedDevices) pairedDevicesInformation];
  v4 = [v3 pairedDeviceList];
  v5 = [v4 pairedDevices];

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFPairedDevice);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = specialized Array._copyToContiguousArray()(v6);
  specialized MutableCollection<>.sort(by:)(&v10);

  if ((v10 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x245D0D9A0](a1, v10);
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v10 + 16) > a1)
  {
    v7 = *(v10 + 8 * a1 + 32);
LABEL_5:
    v8 = v7;

    return v8;
  }

  __break(1u);

  __break(1u);
  return result;
}

void CAFUIDevicePickerViewController.collectionView(_:didSelectItemAt:)(id a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.default;
  (*(v7 + 16))(v9, a2, v6);
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v73 = a1;
    aBlock[0] = v13;
    v14 = v13;
    *v12 = 136315138;
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
    v15 = a2;
    v16 = v3;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v72 = v10;
    v19 = v18;
    (*(v7 + 8))(v9, v6);
    v20 = v17;
    v3 = v16;
    a2 = v15;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, aBlock);

    *(v12 + 4) = v21;
    _os_log_impl(&dword_24234D000, v72, v11, "Selecting item at index %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    v22 = v14;
    a1 = v73;
    MEMORY[0x245D0E5A0](v22, -1, -1);
    MEMORY[0x245D0E5A0](v12, -1, -1);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }

  v23 = CAFUIDevicePickerViewController.adjustedIndex(for:)(a2);
  v24 = CAFUIDevicePickerViewController.device(at:)(v23);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v26 = [a1 cellForItemAtIndexPath_];

  if (!v26)
  {
    goto LABEL_16;
  }

  type metadata accessor for CAFUIDevicePickerViewCell();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    v29 = [v24 identifier];
    if (v29)
    {
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      if ([v24 state] == 2)
      {
        v73 = a1;

        v34 = *&v3[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_pairedDevices];
        v35 = *&v3[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_connectedDeviceSupportedActions];
        v36 = *&v3[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_carSession];
        v37 = objc_allocWithZone(type metadata accessor for CAFUIDevicePickerDetailViewController());
        *&v37[OBJC_IVAR____TtC5CAFUI37CAFUIDevicePickerDetailViewController_delegate + 8] = 0;
        v38 = swift_unknownObjectWeakInit();
        *&v37[OBJC_IVAR____TtC5CAFUI37CAFUIDevicePickerDetailViewController_limitedUIView] = 0;
        v39 = OBJC_IVAR____TtC5CAFUI37CAFUIDevicePickerDetailViewController_carSession;
        *&v37[OBJC_IVAR____TtC5CAFUI37CAFUIDevicePickerDetailViewController_carSession] = 0;
        *&v37[OBJC_IVAR____TtC5CAFUI37CAFUIDevicePickerDetailViewController_device] = v24;
        *&v37[OBJC_IVAR____TtC5CAFUI37CAFUIDevicePickerDetailViewController_pairedDevices] = v34;
        *(v38 + 8) = &protocol witness table for CAFUIDevicePickerViewController;
        swift_unknownObjectWeakAssign();
        *&v37[OBJC_IVAR____TtC5CAFUI37CAFUIDevicePickerDetailViewController_actions] = v35;
        v40 = *&v37[v39];
        *&v37[v39] = v36;
        v41 = v24;
        v42 = v36;
        v24 = v41;
        v43 = v42;

        v44 = v34;

        *&v37[OBJC_IVAR____TtC5CAFUI24CAFUITableViewController_tableView] = [objc_allocWithZone(type metadata accessor for CAFUIHeaderFooterTableView()) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
        v45 = type metadata accessor for CAFUITableViewController();
        v75.receiver = v37;
        v75.super_class = v45;
        v46 = objc_msgSendSuper2(&v75, sel_initWithNibName_bundle_, 0, 0);
        v47 = objc_opt_self();
        v48 = v46;
        v49 = [v47 defaultCenter];
        v50 = v3;
        v51 = *MEMORY[0x277CF8928];
        v52 = [objc_opt_self() mainQueue];
        v53 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = partial apply for closure #1 in CAFUIDevicePickerDetailViewController.init(device:pairedDevices:actions:carSession:delegate:);
        aBlock[5] = v53;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
        aBlock[3] = &block_descriptor_8;
        v54 = _Block_copy(aBlock);

        v55 = [v49 addObserverForName:v51 object:0 queue:v52 usingBlock:v54];
        _Block_release(v54);

        swift_unknownObjectRelease();
        v56 = [v50 navigationController];
        if (v56)
        {
          v57 = v56;
          [v56 pushViewController:v48 animated:1];
        }

        v58 = IndexPath._bridgeToObjectiveC()().super.isa;
        v59 = [v73 cellForItemAtIndexPath_];

        if (v59)
        {
          [v59 setSelected_];
        }
      }

      else
      {
        v60 = [v24 identifier];
        if (v60)
        {
          v61 = a2;
          v62 = v3;
          v63 = v60;
          v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v66 = v65;

          v3 = v62;
          a2 = v61;
        }

        else
        {
          v64 = 0;
          v66 = 0;
        }

        CAFUIDevicePickerViewController.setProcessingUI(for:with:at:)(v28, v64, v66, a2);

        v67 = &v3[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_delegate];
        swift_beginAccess();
        if (*v67)
        {
          v68 = *(v67 + 1);
          ObjectType = swift_getObjectType();
          v76 = 1;
          v70 = *(v68 + 8);
          swift_unknownObjectRetain();
          v70(&v76, v31, v33, ObjectType, v68);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      goto LABEL_23;
    }

LABEL_16:
    return;
  }

LABEL_23:
}

id CAFUIDevicePickerViewController.setProcessingUI(for:with:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  result = [v5 collectionView];
  if (result)
  {
    v14 = result;
    [result setUserInteractionEnabled_];

    [v5 setNeedsFocusUpdate];
    v15 = &v5[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_deviceIDInProcess];
    *v15 = a2;
    *(v15 + 1) = a3;

    v16 = *(a1 + OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_showSpinner);
    *(a1 + OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_showSpinner) = 1;
    CAFUIDevicePickerViewCell.showSpinner.didset(v16);
    v17 = type metadata accessor for IndexPath();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v12, a4, v17);
    (*(v18 + 56))(v12, 0, 1, v17);
    v19 = OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_spinningCellIndexPath;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v12, &v5[v19]);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void CAFUIDevicePickerViewController.pairedDevicesInformationService(_:didUpdatePairedDeviceList:)(uint64_t a1, void *a2)
{
  v3 = v2;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = static OS_os_log.default;
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27[0] = v9;
    *v7 = 138412546;
    *(v7 + 4) = a2;
    *v8 = a2;
    *(v7 + 12) = 2080;
    v10 = a2;
    v11 = CAFPairedDevicesInformation.items.getter();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI35CAFUIImageRepresentableItemProtocol_pMd);
    v13 = MEMORY[0x245D0D320](v11, v12);
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v27);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_24234D000, v5, v6, "Paired device list updated: %@, items: %s", v7, 0x16u);
    outlined destroy of RequestTemporaryContentModel?(v8, &_sSo8NSObjectCSgMd);
    MEMORY[0x245D0E5A0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245D0E5A0](v9, -1, -1);
    MEMORY[0x245D0E5A0](v7, -1, -1);
  }

  v17 = CAFPairedDevicesInformation.items.getter();
  v18 = OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_items;
  swift_beginAccess();
  *&v3[v18] = v17;

  v19 = MEMORY[0x245D0D180](0x43495645445F4F4ELL, 0xEA00000000005345);
  v20 = CAFUILocalizedStringForKey(v19);

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24.value._countAndFlagsBits = v21;
  v24.value._object = v23;
  CAFUICollectionViewController.updateEmptyView(title:)(v24);

  v25 = [v3 collectionView];
  if (v25)
  {
    v26 = v25;
    [v25 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void CAFUIDevicePickerViewController.updatePTButton()()
{
  v1 = v0;
  if (!*&v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_requestContentManager] || (v2._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)(), CAFUIRequestContentManager.state(for:)(v2), , v14))
  {
    if (v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_punchThroughState])
    {
      v3 = MEMORY[0x245D0D180](0x445F4547414E414DLL, 0xEE00534543495645);
      v4 = CAFUILocalizedStringForKey(v3);

      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8.value._countAndFlagsBits = v5;
      v8.value._object = v7;
      CAFUIPunchthroughState.buttonForCurrentState(title:)(v9, v8);
      v11 = v10;

      if (!v11)
      {
        return;
      }

      [v11 addTarget:v1 action:sel_devicePickerButtonTapped forControlEvents:64];
      v12 = [v1 navigationItem];
      v13 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
      [v12 setRightBarButtonItem_];
    }

    else
    {
      v13 = [v0 navigationItem];
      [v13 setRightBarButtonItem_];
    }
  }
}

Swift::Void __swiftcall CAFUIDevicePickerViewController.devicePickerButtonTapped()()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.default;
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24234D000, v1, v2, "Requesting presentation of device picker PT!", v3, 2u);
    MEMORY[0x245D0E5A0](v3, -1, -1);
  }

  if (*&v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_requestContentManager])
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v0;
    v8 = v0;
    CAFUIRequestContentManager.present(identifier:completion:)(v4, v6, partial apply for closure #1 in CAFUIDevicePickerViewController.devicePickerButtonTapped(), v7);
  }
}

BOOL closure #1 in CAFUIDevicePickerViewController.devicePickerButtonTapped()(char a1, uint64_t a2)
{
  if (a1)
  {
    *(a2 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_punchThroughState) = 2;
    CAFUIDevicePickerViewController.updatePTButton()();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v2 = static OS_os_log.default;
    v3 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v2, v3);
    if (result)
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Presentation of device picker PT was successful!";
      goto LABEL_10;
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v2 = static OS_os_log.default;
    v3 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v2, v3);
    if (result)
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Presentation of device picker PT was not successful.";
LABEL_10:
      _os_log_impl(&dword_24234D000, v2, v3, v6, v5, 2u);

      JUMPOUT(0x245D0E5A0);
    }
  }

  return result;
}

void closure #1 in CAFUIDevicePickerViewController.updateDevicePickerLimitedUI()(char a1)
{
  if (a1)
  {
    static os_log_type_t.default.getter();
  }

  else
  {
    static os_log_type_t.error.getter();
  }

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
  v1 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();
}

Swift::Void __swiftcall CAFUIDevicePickerViewController.resetSpinningCellAndUserInteraction()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in CAFUIDevicePickerViewController.resetSpinningCellAndUserInteraction();
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_6_0;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x245D0D520](0, v7, v3, v10);
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
}

void closure #1 in CAFUIDevicePickerViewController.resetSpinningCellAndUserInteraction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [v11 collectionView];
    if (v12)
    {
      v13 = v12;
      [v12 setUserInteractionEnabled_];

      v14 = &v11[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_deviceIDInProcess];
      *v14 = 0;
      *(v14 + 1) = 0;

      v15 = OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_spinningCellIndexPath;
      swift_beginAccess();
      outlined init with copy of IndexPath?(&v11[v15], v5);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        outlined destroy of RequestTemporaryContentModel?(v5, &_s10Foundation9IndexPathVSgMd);
        return;
      }

      (*(v7 + 32))(v9, v5, v6);
      (*(v7 + 56))(v3, 1, 1, v6);
      swift_beginAccess();
      outlined assign with take of IndexPath?(v3, &v11[v15]);
      swift_endAccess();
      v16 = [v11 collectionView];

      if (v16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
        v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_2424235A0;
        (*(v7 + 16))(v18 + v17, v9, v6);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v16 reconfigureItemsAtIndexPaths_];

        (*(v7 + 8))(v9, v6);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

Swift::Void __swiftcall CAFUIDevicePickerViewController.shouldRequest(action:for:)(CAFUI::CAFDeviceAction action, Swift::String a2)
{
  v3 = v2;
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v5 = action;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v5;
  v10 = [v3 collectionView];
  if (v10)
  {
    v11 = v10;
    [v10 setUserInteractionEnabled_];

    [v3 setNeedsFocusUpdate];
    v12 = &v3[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_delegate];
    swift_beginAccess();
    if (*v12)
    {
      v13 = *(v12 + 1);
      ObjectType = swift_getObjectType();
      LOBYTE(v45) = v9;
      v15 = *(v13 + 8);
      swift_unknownObjectRetain();
      v15(&v45, countAndFlagsBits, object, ObjectType, v13);
      swift_unknownObjectRelease();
    }

    v16 = [v3 navigationController];
    if (v16)
    {
      v17 = v16;
    }

    v18 = [v3 collectionView];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 visibleCells];

      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UICollectionViewCell);
      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v21 >> 62)
      {
LABEL_28:
        v22 = __CocoaSet.count.getter();
        if (v22)
        {
LABEL_9:
          v40 = v7;
          v41 = v6;
          v42 = v3;
          v7 = 0;
          v3 = (v21 & 0xFFFFFFFFFFFFFF8);
          v6 = &OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_deviceIdentifier;
          while (1)
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x245D0D9A0](v7, v21);
            }

            else
            {
              if (v7 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_27;
              }

              v23 = *(v21 + 8 * v7 + 32);
            }

            v24 = v23;
            v25 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

            type metadata accessor for CAFUIDevicePickerViewCell();
            v26 = swift_dynamicCastClass();
            if (v26)
            {
              v27 = v26;
              v28 = *(v26 + OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_deviceIdentifier) == countAndFlagsBits && *(v26 + OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_deviceIdentifier + 8) == object;
              if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }
            }

            ++v7;
            if (v25 == v22)
            {
              goto LABEL_29;
            }
          }

          v29 = [v42 collectionView];
          if (!v29)
          {
            goto LABEL_36;
          }

          v30 = v29;
          v31 = [v29 indexPathForCell_];

          v33 = v40;
          v32 = v41;
          if (v31)
          {
            v34 = v43;
            static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

            CAFUIDevicePickerViewController.setProcessingUI(for:with:at:)(v27, countAndFlagsBits, object, v34);
            (*(v33 + 8))(v34, v32);
            return;
          }

          goto LABEL_30;
        }
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22)
        {
          goto LABEL_9;
        }
      }

LABEL_29:

LABEL_30:
      v35 = static os_log_type_t.error.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
      v36 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v36, v35))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v45 = v38;
        *v37 = 136315138;
        *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v45);
        _os_log_impl(&dword_24234D000, v36, v35, "Cell not visible for deviceID: %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x245D0E5A0](v38, -1, -1);
        MEMORY[0x245D0E5A0](v37, -1, -1);
      }

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CAFUIDevicePickerViewController.LayoutStyle()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CAFUIDevicePickerViewController.LayoutStyle()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CAFUIDevicePickerViewController.LayoutStyle()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CAFUIDevicePickerViewController.LayoutStyle@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CAFUIDevicePickerViewController.LayoutStyle.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CAFUIDevicePickerViewController.LayoutStyle(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6C6C616D73;
  v4 = 0xE500000000000000;
  v5 = 0x656772616CLL;
  if (*v1 != 2)
  {
    v5 = 0x7469617274726F70;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x6D756964656DLL;
    v2 = 0xE600000000000000;
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

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

char *specialized static CAFUIDevicePickerViewController.connectedDeviceSupportedActions(for:)(void *a1)
{
  if ([a1 hasDisconnectDevice])
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v2[v4 + 32] = 2;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  if ([a1 hasForgetDevice])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v6 = *(v2 + 2);
    v5 = *(v2 + 3);
    if (v6 >= v5 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v2);
    }

    *(v2 + 2) = v6 + 1;
    v2[v6 + 32] = 3;
  }

  return v2;
}

char *specialized CAFUIDevicePickerViewController.init(requestContentManager:pairedDevices:carSession:)(uint64_t a1, void *a2, void *a3)
{
  v7 = &v3[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_delegate];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v3[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___cellSize];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = &v3[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___rows];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v3[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___columns];
  *v10 = 0;
  v10[8] = 1;
  v3[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___layoutStyle] = 4;
  v3[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___isPortraitLayout] = 2;
  v11 = &v3[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_deviceIDInProcess];
  *v11 = 0;
  v11[1] = 0;
  *&v3[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_limitedUIView] = 0;
  v3[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_punchThroughState] = 0;
  *&v3[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_pageControl] = 0;
  v12 = OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_carSession;
  *&v3[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_carSession] = 0;
  *&v3[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_spinnerTimer] = 0;
  v13 = OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_spinningCellIndexPath;
  v14 = type metadata accessor for IndexPath();
  (*(*(v14 - 8) + 56))(&v3[v13], 1, 1, v14);
  *&v3[v12] = a3;
  *&v3[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_requestContentManager] = a1;
  *&v3[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_pairedDevices] = a2;

  v15 = a2;
  v16 = a3;
  v17 = [v15 pairedDevicesAction];
  v18 = specialized static CAFUIDevicePickerViewController.connectedDeviceSupportedActions(for:)(v17);

  *&v3[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_connectedDeviceSupportedActions] = v18;
  v19 = specialized CAFUICollectionViewController.init(setting:isRHD:)([v15 pairedDevicesInformation], 0, v3);
  v20 = *&v19[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_pairedDevices];
  v21 = v19;
  v22 = [v20 pairedDevicesInformation];
  [v22 registerObserver_];

  if (CAFUIDevicePickerViewController.isDeviceManagerPTAvailable.getter())
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v23 = static OS_os_log.default;
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v44[0] = v26;
      *v25 = 136315138;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v44);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_24234D000, v23, v24, "Setting up PT with identifier %s.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x245D0E5A0](v26, -1, -1);
      MEMORY[0x245D0E5A0](v25, -1, -1);
    }

    if (a1)
    {
      [*(a1 + 16) addObserver_];
    }

    v21[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_punchThroughState] = 1;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v30 = static OS_os_log.default;
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44[0] = v33;
      *v32 = 136315138;
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v44);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_24234D000, v30, v31, "AutoSettings has no available PT with identifier %s.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x245D0E5A0](v33, -1, -1);
      MEMORY[0x245D0E5A0](v32, -1, -1);
    }
  }

  v37 = [objc_opt_self() defaultCenter];
  v38 = *MEMORY[0x277CF8928];
  v39 = [objc_opt_self() mainQueue];
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44[4] = partial apply for closure #1 in CAFUIDevicePickerViewController.init(requestContentManager:pairedDevices:carSession:);
  v44[5] = v40;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 1107296256;
  v44[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v44[3] = &block_descriptor_78_0;
  v41 = _Block_copy(v44);

  v42 = [v37 addObserverForName:v38 object:0 queue:v39 usingBlock:v41];
  _Block_release(v41);
  swift_unknownObjectRelease();

  return v21;
}

void specialized CAFUIDevicePickerViewController.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_delegate);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___cellSize;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  v3 = v0 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___rows;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___columns;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___layoutStyle) = 4;
  *(v0 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___isPortraitLayout) = 2;
  v5 = (v0 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_deviceIDInProcess);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_limitedUIView) = 0;
  *(v0 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_punchThroughState) = 0;
  *(v0 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_pageControl) = 0;
  *(v0 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_carSession) = 0;
  *(v0 + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_spinnerTimer) = 0;
  v6 = OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_spinningCellIndexPath;
  v7 = type metadata accessor for IndexPath();
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t outlined assign with take of IndexPath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24240AC00()
{
  MEMORY[0x245D0E610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized CAFUIDevicePickerViewController.collectionView(_:layout:insetForSectionAt:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v73 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v71 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v72 = &v67 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v67 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v67 - v12;
  [a1 bounds];
  Width = CGRectGetWidth(v75);
  [a1 bounds];
  Height = CGRectGetHeight(v76);
  v16 = CAFUIDevicePickerViewController.rows.getter();
  CAFUIDevicePickerViewController.cellSize.getter();
  v18 = v17;
  v19 = OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___rows;
  v20 = *&v2[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___rows];
  if (CAFUIDevicePickerViewController.isPortraitLayout.getter())
  {
    v21 = (Height + (v20 + -1.0) * -60.0 - v18 * v16) * 0.5;
  }

  else
  {
    v22 = [v2 view];
    if (!v22)
    {
LABEL_46:
      __break(1u);
      return;
    }

    v23 = v22;
    [v22 safeAreaInsets];
    v25 = v24;

    v21 = 48.0 - v25;
  }

  v26 = *&v2[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___cellSize + 8];
  v27 = [v2 view];
  if (!v27)
  {
    __break(1u);
    goto LABEL_46;
  }

  v28 = v27;
  v29 = Height - v26;
  [v27 safeAreaInsets];
  v31 = v30;

  v32 = v29 - (48.0 - v31);
  if (v2[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___isPortraitLayout])
  {
    v32 = v21;
  }

  v33 = v32 + -1.0;
  v34 = (Width - dbl_242427D38[CAFUIDevicePickerViewController.layoutStyle.getter()]) * 0.5;
  if (v2[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___layoutStyle] <= 1u && !v2[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___layoutStyle])
  {

    goto LABEL_12;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {
LABEL_12:
    v70 = OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_carSession;
    v36 = *&v2[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_carSession];
    if (v36 && (v37 = [v36 configuration], v38 = objc_msgSend(v37, sel_rightHandDrive), v37, (v38 & 1) != 0))
    {
      v39 = MEMORY[0x277D84688];
    }

    else
    {
      v39 = MEMORY[0x277D84680];
    }

    v40 = *v39;
    v41 = v73;
    v69 = v73[13];
    v69(v13, v40, v4);
    v74 = v34;
    v68 = v41[2];
    v68(v11, v13, v4);
    v42 = v41[11];
    v43 = v42(v11, v4);
    v44 = *MEMORY[0x277D84678];
    if (v43 == *MEMORY[0x277D84678] || v43 == *MEMORY[0x277D84670] || v43 == *MEMORY[0x277D84680] || v43 == *MEMORY[0x277D84688] || v43 == *MEMORY[0x277D84660])
    {
      v56 = v41[1];
      v56(v13, v4);
    }

    else if (v43 == *MEMORY[0x277D84668])
    {
      v56 = v73[1];
      v56(v13, v4);
    }

    else
    {
      Double._roundSlowPath(_:)();
      v64 = v13;
      v65 = v73[1];
      v65(v64, v4);
      v66 = v11;
      v56 = v65;
      v65(v66, v4);
    }

    v57 = *&v2[v70];
    if (v57 && (v58 = [v57 configuration], v59 = objc_msgSend(v58, sel_rightHandDrive), v58, (v59 & 1) != 0))
    {
      v60 = MEMORY[0x277D84680];
    }

    else
    {
      v60 = MEMORY[0x277D84688];
    }

    v61 = v72;
    v69(v72, *v60, v4);
    v74 = v34;
    v62 = v71;
    v68(v71, v61, v4);
    v63 = v42(v62, v4);
    if (v63 == v44 || v63 == *MEMORY[0x277D84670] || v63 == *MEMORY[0x277D84680] || v63 == *MEMORY[0x277D84688] || v63 == *MEMORY[0x277D84660] || v63 == *MEMORY[0x277D84668])
    {
      v56(v61, v4);
    }

    else
    {
      Double._roundSlowPath(_:)();
      v56(v61, v4);
      v56(v62, v4);
    }

    return;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v45 = static OS_os_log.default;
  v46 = v2;
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v74 = *&v49;
    *v48 = 136315906;
    v77.top = v21;
    v77.left = v34;
    v77.bottom = v33;
    v77.right = v34;
    v50 = NSStringFromUIEdgeInsets(v77);
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v74);

    *(v48 + 4) = v54;
    *(v48 + 12) = 2048;
    *(v48 + 14) = Width;
    *(v48 + 22) = 2048;
    *(v48 + 24) = Height;
    *(v48 + 32) = 2048;
    v55 = *&v2[v19];

    *(v48 + 34) = v55;
    _os_log_impl(&dword_24234D000, v45, v47, "Returning insets: %s for collection view width: %f, height: %f, number of rows: %ld", v48, 0x2Au);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x245D0E5A0](v49, -1, -1);
    MEMORY[0x245D0E5A0](v48, -1, -1);
  }

  else
  {
  }
}

uint64_t specialized CAFUIDevicePickerViewController.collectionView(_:numberOfItemsInSection:)()
{
  v0 = CAFUIDevicePickerViewController.columns.getter();
  v1 = CAFUIDevicePickerViewController.rows.getter();
  v2 = v0 * v1;
  if ((v0 * v1) >> 64 == (v0 * v1) >> 63)
  {
    if (one-time initialization token for default == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v3 = static OS_os_log.default;
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_24234D000, v3, v4, "number of items in section: %ld", v5, 0xCu);
    MEMORY[0x245D0E5A0](v5, -1, -1);
  }

  return v2;
}

uint64_t specialized CAFUIDevicePickerViewController.numberOfSections(in:)()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.default;
  v2 = v0;
  v3 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v1, v3))
  {

LABEL_10:
    v10 = OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_items;
    swift_beginAccess();
    v11 = *(*&v2[v10] + 16);
    v12 = CAFUIDevicePickerViewController.rows.getter();
    result = CAFUIDevicePickerViewController.columns.getter();
    if ((v12 * result) >> 64 == (v12 * result) >> 63)
    {
      v13 = ceil(v11 / (v12 * result));
      if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v13 > -9.22337204e18)
        {
          if (v13 < 9.22337204e18)
          {
            return v13;
          }

          goto LABEL_18;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  v4 = swift_slowAlloc();
  *v4 = 134217984;
  v5 = OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_items;
  swift_beginAccess();
  v6 = *(*&v2[v5] + 16);
  v7 = CAFUIDevicePickerViewController.rows.getter();
  result = CAFUIDevicePickerViewController.columns.getter();
  if ((v7 * result) >> 64 != (v7 * result) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = ceil(v6 / (v7 * result));
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v9 < 9.22337204e18)
  {
    *(v4 + 4) = v9;

    _os_log_impl(&dword_24234D000, v1, v3, "number of sections: %ld", v4, 0xCu);
    MEMORY[0x245D0E5A0](v4, -1, -1);
    goto LABEL_10;
  }

LABEL_22:
  __break(1u);
  return result;
}

void specialized CAFUIDevicePickerViewController.scrollViewDidScroll(_:)()
{
  v1 = OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_items;
  swift_beginAccess();
  v2 = *(*&v0[v1] + 16);
  v3 = CAFUIDevicePickerViewController.rows.getter();
  v4 = CAFUIDevicePickerViewController.columns.getter();
  if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_25;
  }

  v5 = ceil(v2 / (v3 * v4));
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
LABEL_17:
    v33 = static OS_os_log.default;
    v34 = v0;
    v35 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v33, v35))
    {

      return;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 67109378;
    v38 = *&v34[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___rows];
    v39 = *&v34[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController____lazy_storage___columns];
    if ((v38 * v39) >> 64 == (v38 * v39) >> 63)
    {
      v40 = ceil(*(*&v0[v1] + 16) / (v38 * v39));
      if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v40 > -9.22337204e18)
        {
          if (v40 < 9.22337204e18)
          {
            v41 = v37;
            *(v36 + 4) = v40 > 1;

            *(v36 + 8) = 2112;
            v42 = *&v34[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_pageControl];
            *(v36 + 10) = v42;
            *v41 = v42;
            v43 = v42;
            _os_log_impl(&dword_24234D000, v33, v35, "Early exit scroll view did scroll method. isPaginationActive: %{BOOL}d, pageControl: %@", v36, 0x12u);
            outlined destroy of RequestTemporaryContentModel?(v41, &_sSo8NSObjectCSgMd);
            MEMORY[0x245D0E5A0](v41, -1, -1);
            MEMORY[0x245D0E5A0](v36, -1, -1);
            return;
          }

          goto LABEL_32;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }

  if (v5 < 2 || (v6 = *&v0[OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_pageControl]) == 0)
  {
LABEL_16:
    if (one-time initialization token for default == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  v7 = v6;
  v8 = [v0 collectionView];
  if (!v8)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v9 = v8;
  [v8 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v44.origin.x = v11;
  v44.origin.y = v13;
  v44.size.width = v15;
  v44.size.height = v17;
  if (CGRectGetWidth(v44) <= 0.0)
  {

    goto LABEL_16;
  }

  v18 = [v0 collectionView];
  if (!v18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v19 = v18;
  [v18 contentOffset];
  v21 = v20;

  v22 = [v0 collectionView];
  if (v22)
  {
    v23 = v22;
    [v22 frame];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v45.origin.x = v25;
    v45.origin.y = v27;
    v45.size.width = v29;
    v45.size.height = v31;
    v32 = round(v21 / CGRectGetWidth(v45));
    if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v32 > -9.22337204e18)
      {
        if (v32 < 9.22337204e18)
        {
          [v7 setCurrentPage_];

          return;
        }

        goto LABEL_35;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_38:
  __break(1u);
}

uint64_t lazy protocol witness table accessor for type IndexPath and conformance IndexPath(unint64_t *a1, void (*a2)(uint64_t))
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

void specialized CAFUIDevicePickerViewController.navigationController(_:didShow:animated:)()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1;
  v6 = [v1 collectionView];
  if (!v6)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = [v6 indexPathsForSelectedItems];

  if (v8)
  {
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = 0;
      while (v11 < *(v9 + 16))
      {
        (*(v3 + 16))(v5, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v2);
        v12 = [v16 collectionView];
        if (!v12)
        {
          goto LABEL_11;
        }

        v13 = v12;
        ++v11;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v13 deselectItemAtIndexPath:isa animated:1];

        (*(v3 + 8))(v5, v2);
        if (v10 == v11)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

LABEL_8:
  }
}

uint64_t sub_24240BE30@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

void type metadata completion function for CAFUIDevicePickerViewController()
{
  type metadata accessor for IndexPath?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for IndexPath?()
{
  if (!lazy cache variable for type metadata for IndexPath?)
  {
    type metadata accessor for IndexPath();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexPath?);
    }
  }
}

uint64_t getEnumTagSinglePayload for CAFUIDevicePickerViewController.LayoutStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CAFUIDevicePickerViewController.LayoutStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type CAFUIDevicePickerViewController.LayoutStyle and conformance CAFUIDevicePickerViewController.LayoutStyle()
{
  result = lazy protocol witness table cache variable for type CAFUIDevicePickerViewController.LayoutStyle and conformance CAFUIDevicePickerViewController.LayoutStyle;
  if (!lazy protocol witness table cache variable for type CAFUIDevicePickerViewController.LayoutStyle and conformance CAFUIDevicePickerViewController.LayoutStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFUIDevicePickerViewController.LayoutStyle and conformance CAFUIDevicePickerViewController.LayoutStyle);
  }

  return result;
}

unint64_t specialized CAFUIDevicePickerViewController.LayoutStyle.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CAFUIDevicePickerViewController.LayoutStyle.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24240C3F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t outlined init with copy of IndexPath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

size_t CAFUIPickerRepresentable.toggle(index:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v65 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v65 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v66 = &v65 - v14;
  MEMORY[0x28223BE20](v13);
  v67 = (&v65 - v15);
  v16 = *(a3 + 48);
  if ((v16(a2, a3) & 1) == 0)
  {
    v17 = (*(a3 + 24))(a2, a3);
    v18 = *(v17 + 16);
    v19 = 32;
    while (v18)
    {
      v20 = *(v17 + v19);
      v19 += 8;
      --v18;
      if (v20 == a1)
      {

        return MEMORY[0x277D84F90];
      }
    }
  }

  v68 = v6;
  v69 = v7;
  v70 = 0;
  v71 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v22 = (*(*(a3 + 8) + 16))(a2);
  v24 = v23;

  v70 = v22;
  v71 = v24;
  MEMORY[0x245D0D240](0xD00000000000001ALL, 0x800000024242AE40);
  v72 = a1;
  v25 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x245D0D240](v25);

  specialized static CAFUILogger.default(_:function:file:line:)(v70, v71, 0x6928656C67676F74, 0xEE00293A7865646ELL, 52);

  v26 = *(a3 + 24);
  v27 = v26(a2, a3);
  v28 = *(v27 + 16);
  v29 = 32;
  while (v28)
  {
    v30 = *(v27 + v29);
    v29 += 8;
    --v28;
    if (v30 == a1)
    {

      v31 = &v70;
      v21 = (*(a3 + 40))(&v70, a2, a3);
      v33 = v32;
      v34 = *v32;
      v35 = *(*v32 + 2);
      if (!v35)
      {
LABEL_14:
        v38 = *(*v32 + 2);
        goto LABEL_30;
      }

      v36 = 0;
      v37 = -40;
      while (*&v34[8 * v36 + 32] != a1)
      {
        ++v36;
        v37 -= 8;
        if (v35 == v36)
        {
          goto LABEL_14;
        }
      }

      v54 = (v36 + 1);
      if (__OFADD__(v36, 1))
      {
        __break(1u);
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v33 = v34;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_28;
        }
      }

      v34 = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
LABEL_28:
      *v33 = v34;
      v56 = *(v34 + 2);
      if (v54 != v56)
      {
        v57 = (v34 + 32);
        v63 = &v34[-v37];
        while (v54 < v56)
        {
          if (*v63 != a1)
          {
            if (v54 != v36)
            {
              if (v36 >= v56)
              {
                __break(1u);
                break;
              }

              v64 = *(v57 + 8 * v36);
              *(v57 + 8 * v36) = *v63;
              *v63 = v64;
              v56 = *(v34 + 2);
            }

            ++v36;
          }

          ++v54;
          v63 += 8;
          if (v54 == v56)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
        goto LABEL_49;
      }

LABEL_29:
      *v33 = v34;
      v38 = *(v34 + 2);
      v35 = v36;
      if (v38 >= v36)
      {
LABEL_30:
        specialized Array.replaceSubrange<A>(_:with:)(v35, v38);
        (v21)(&v70, 0);
        v31 = v67;
        MEMORY[0x245D0BE30](a1, 0);
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
        a1 = *(v21 + 16);
        v57 = *(v21 + 24);
        v33 = (a1 + 1);
        v34 = v69;
        if (a1 < v57 >> 1)
        {
LABEL_31:
          *(v21 + 16) = v33;
          (*(v34 + 4))(v21 + ((v34[80] + 32) & ~v34[80]) + *(v34 + 9) * a1, v31);
          return v21;
        }

LABEL_49:
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57 > 1, v33, 1, v21);
        goto LABEL_31;
      }

      __break(1u);
LABEL_51:
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 16) + 1, 1, v36);
      *v33 = v36;
LABEL_17:
      v41 = v66;
      v43 = *(v36 + 16);
      v42 = *(v36 + 24);
      if (v43 >= v42 >> 1)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v36);
        *v33 = v36;
      }

      *(v36 + 16) = v43 + 1;
      *(v36 + 8 * v43 + 32) = a1;
      (v21)(&v70, 0);
      MEMORY[0x245D0BE30](a1, 0);
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v45 = *(v21 + 16);
      v44 = *(v21 + 24);
      if (v45 >= v44 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1, v21);
      }

      v46 = v68;
      v47 = v69;
      *(v21 + 16) = v45 + 1;
      (*(v47 + 32))(v21 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v45, v41, v46);
      return v21;
    }
  }

  if (v16(a2, a3))
  {
    v21 = (*(a3 + 40))(&v70, a2, a3);
    v33 = v39;
    v36 = *v39;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    *v33 = v36;
    if ((v40 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_17;
  }

  v48 = v26(a2, a3);
  if (*(v48 + 16))
  {
    v49 = *(v48 + 32);

    MEMORY[0x245D0BE30](v49, 0);
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v51 = *(v21 + 16);
    v50 = *(v21 + 24);
    if (v51 >= v50 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v50 > 1, v51 + 1, 1, v21);
    }

    *(v21 + 16) = v51 + 1;
    v52 = v21 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v51;
    v53 = v68;
    (*(v69 + 32))(v52, v12, v68);
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
    v53 = v68;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_2424235A0;
  *(v58 + 32) = a1;
  (*(a3 + 32))();
  v59 = v65;
  MEMORY[0x245D0BE30](a1, 0);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1, v21);
  }

  v61 = *(v21 + 16);
  v60 = *(v21 + 24);
  if (v61 >= v60 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v60 > 1, v61 + 1, 1, v21);
  }

  *(v21 + 16) = v61 + 1;
  (*(v69 + 32))(v21 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v61, v59, v53);
  return v21;
}

uint64_t CAFUIPickerRepresentable.configureCell(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v64 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = v54 - v10;
  v11 = type metadata accessor for CAFUITileCellConfiguration(0);
  v59 = *(v11 - 8);
  v60 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = (v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for UIListContentConfiguration();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v54 - v19;
  static UIListContentConfiguration.valueCell()();
  specialized CAFUICellProtocol.updateContentConfigurationProperties(_:)(v18, v20);
  v55 = v15;
  v21 = *(v15 + 8);
  v67 = v14;
  v57 = v21;
  v58 = v15 + 8;
  v21(v18, v14);
  v22 = *(a3 + 8);
  (*(v22 + 72))(a2, v22);
  UIListContentConfiguration.image.setter();
  (*(a3 + 56))(a2, a3);
  v66 = v20;
  UIListContentConfiguration.text.setter();
  v23 = *(a3 + 16);
  v61 = a2;
  v62 = v3;
  v56 = a3;
  v24 = v23(a2, a3);
  v25 = *(v24 + 16);
  v65 = a1;
  if (v25)
  {
    rawValue = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
    v26._rawValue = rawValue;
    v54[1] = v24;
    v27 = (v24 + 40);
    do
    {
      v28 = *(v27 - 1);
      v29 = *v27;
      rawValue = v26._rawValue;
      v31 = *(v26._rawValue + 2);
      v30 = *(v26._rawValue + 3);

      if (v31 >= v30 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
        v26._rawValue = rawValue;
      }

      *(v26._rawValue + 2) = v31 + 1;
      v32 = v26._rawValue + 16 * v31;
      *(v32 + 4) = v28;
      *(v32 + 5) = v29;
      v27 += 5;
      --v25;
    }

    while (v25);
  }

  else
  {

    v26._rawValue = MEMORY[0x277D84F90];
  }

  v33 = v61;
  v34._rawValue = (*(v56 + 24))(v61);
  CAFUILocalizedValues(for:selectedValues:)(v26, v34);

  v35 = v66;
  UIListContentConfiguration.secondaryText.setter();
  v56 = (*(v22 + 8))(v33, v22);
  v37 = v36;
  v38 = v60;
  v39 = v60[5];
  v40 = v55;
  v41 = v35;
  v42 = v67;
  (*(v55 + 16))(v13 + v39, v41, v67);
  (*(v40 + 56))(v13 + v39, 0, 1, v42);
  v43 = (*(v22 + 24))(v33, v22);
  v45 = v44;
  v46 = (*(v22 + 32))(v33, v22);
  v47 = CAFListContentRepresentable.isLimitedUI.getter(v33, v22);
  *v13 = v56;
  v13[1] = v37;
  v48 = (v13 + v38[6]);
  *v48 = v43;
  v48[1] = v45;
  *(v13 + v38[7]) = v46;
  *(v13 + v38[8]) = 0;
  *(v13 + v38[9]) = 1;
  *(v13 + v38[10]) = v47 & 1;
  v49 = v63;
  outlined init with copy of CAFUITileCellConfiguration(v13, v63);
  (*(v59 + 56))(v49, 0, 1, v38);
  v50 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  v51 = v65;
  swift_beginAccess();
  v52 = v64;
  outlined init with copy of CAFUITileCellConfiguration?(v51 + v50, v64);
  swift_beginAccess();
  outlined assign with copy of CAFUITileCellConfiguration?(v49, v51 + v50);
  swift_endAccess();
  CAFUITileBaseCell.tileCellConfiguration.didset(v52);
  outlined destroy of CAFUITileCellConfiguration?(v52);
  outlined destroy of CAFUITileCellConfiguration?(v49);
  outlined destroy of CAFUITileCellConfiguration(v13);
  return v57(v66, v67);
}

uint64_t CAFUIButtonRepresentable.configureCell(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v42 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v41 = &v35 - v8;
  v9 = type metadata accessor for CAFUITileCellConfiguration(0);
  v38 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for UIListContentConfiguration();
  v35 = v12;
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  static UIListContentConfiguration.valueCell()();
  specialized CAFUICellProtocol.updateContentConfigurationProperties(_:)(v16, v18);
  v19 = *(v13 + 8);
  v39 = v13 + 8;
  v40 = v19;
  v19(v16, v12);
  v20 = *(a3 + 8);
  (*(v20 + 16))(a2, v20);
  UIListContentConfiguration.text.setter();
  (*(v20 + 72))(a2, v20);
  v21 = v18;
  v36 = v18;
  UIListContentConfiguration.image.setter();
  v22 = (*(v20 + 8))(a2, v20);
  v24 = v23;
  v25 = v9[5];
  v26 = v21;
  v27 = v35;
  (*(v13 + 16))(v11 + v25, v26, v35);
  (*(v13 + 56))(v11 + v25, 0, 1, v27);
  v28 = CAFListContentRepresentable.isLimitedUI.getter(a2, v20);
  *v11 = v22;
  v11[1] = v24;
  v29 = (v11 + v9[6]);
  *v29 = 0;
  v29[1] = 0;
  *(v11 + v9[7]) = 0;
  *(v11 + v9[8]) = 0;
  *(v11 + v9[9]) = 0;
  *(v11 + v9[10]) = v28 & 1;
  v30 = v41;
  outlined init with copy of CAFUITileCellConfiguration(v11, v41);
  (*(v38 + 56))(v30, 0, 1, v9);
  v31 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  v32 = v37;
  swift_beginAccess();
  v33 = v42;
  outlined init with copy of CAFUITileCellConfiguration?(v32 + v31, v42);
  swift_beginAccess();
  outlined assign with copy of CAFUITileCellConfiguration?(v30, v32 + v31);
  swift_endAccess();
  CAFUITileBaseCell.tileCellConfiguration.didset(v33);
  outlined destroy of CAFUITileCellConfiguration?(v33);
  outlined destroy of CAFUITileCellConfiguration?(v30);
  outlined destroy of CAFUITileCellConfiguration(v11);
  return v40(v36, v27);
}

double CAFUIButtonRepresentable.cellSelected()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(a2 + 16))())
  {
    _StringGuts.grow(_:)(38);

    v6 = (*(*(a2 + 8) + 16))(a1);
    MEMORY[0x245D0D240](v6);

    specialized static CAFUILogger.default(_:function:file:line:)(0xD000000000000024, 0x800000024242D6E0, 0x656C65536C6C6563, 0xEE00292864657463, 39);
  }

  else
  {
    _StringGuts.grow(_:)(45);

    v7 = (*(*(a2 + 8) + 16))(a1);
    MEMORY[0x245D0D240](v7);

    MEMORY[0x245D0D240](0xD000000000000011, 0x800000024242D730);
    specialized static CAFUILogger.default(_:function:file:line:)(0xD00000000000001ALL, 0x800000024242D710, 0x656C65536C6C6563, 0xEE00292864657463, 35);

    (*(a2 + 24))(1, a1, a2);
  }

  *&result = 2;
  *a3 = xmmword_242427D90;
  *(a3 + 16) = 3;
  return result;
}

void closure #2 in CAFUIPickerViewController.init(pickerRepresentable:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [*(Strong + OBJC_IVAR____TtC5CAFUI24CAFUITableViewController_tableView) reloadData];
  }
}

Swift::Void __swiftcall CAFUIPickerViewController.viewDidLoad()()
{
  v64.receiver = v0;
  v64.super_class = type metadata accessor for CAFUIPickerViewController();
  objc_msgSendSuper2(&v64, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC5CAFUI24CAFUITableViewController_tableView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  [v1 setBackgroundColor_];

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_35;
  }

  v5 = v4;
  v6 = [v2 clearColor];
  [v5 setBackgroundColor_];

  v7 = [v0 view];
  if (!v7)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v8 = v7;
  [v7 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_242423B90;
  v10 = [v1 topAnchor];
  v11 = [v0 view];
  if (!v11)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = v11;
  v13 = [v11 topAnchor];

  v14 = [v10 constraintEqualToAnchor_];
  *(v9 + 32) = v14;
  v15 = [v1 bottomAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v17 = v16;
  v18 = [v16 safeAreaLayoutGuide];

  v19 = [v18 bottomAnchor];
  v20 = [v15 constraintEqualToAnchor_];

  *(v9 + 40) = v20;
  v21 = [v1 leadingAnchor];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v23 = v22;
  v24 = [v22 safeAreaLayoutGuide];

  v25 = [v24 leadingAnchor];
  v26 = [v21 constraintEqualToAnchor_];

  *(v9 + 48) = v26;
  v27 = [v1 trailingAnchor];
  v28 = [v0 view];
  if (!v28)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v29 = v28;
  v63 = v0;
  v30 = objc_opt_self();
  v31 = [v29 safeAreaLayoutGuide];

  v32 = [v31 trailingAnchor];
  v33 = [v27 constraintEqualToAnchor_];

  *(v9 + 56) = v33;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v30 activateConstraints_];

  if (one-time initialization token for cellsByIdentifiers != -1)
  {
LABEL_33:
    swift_once();
  }

  v35 = static CAFUITableCells.cellsByIdentifiers;
  v36 = static CAFUITableCells.cellsByIdentifiers + 64;
  v37 = 1 << *(static CAFUITableCells.cellsByIdentifiers + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(static CAFUITableCells.cellsByIdentifiers + 64);
  v40 = (v37 + 63) >> 6;

  v41 = 0;
  if (v39)
  {
    while (1)
    {
      v42 = v41;
LABEL_16:
      v43 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v44 = (*(v35 + 48) + 16 * (v43 | (v42 << 6)));
      v45 = *v44;
      v46 = v44[1];
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

      v48 = MEMORY[0x245D0D180](v45, v46);
      [v1 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v48];

      if (!v39)
      {
        goto LABEL_12;
      }
    }
  }

  while (1)
  {
LABEL_12:
    v42 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v42 >= v40)
    {
      break;
    }

    v39 = *(v36 + 8 * v42);
    ++v41;
    if (v39)
    {
      v41 = v42;
      goto LABEL_16;
    }
  }

  if (one-time initialization token for viewsByIdentifiers != -1)
  {
    swift_once();
  }

  v49 = static CAFUITableHeaderFooterViews.viewsByIdentifiers;
  v50 = static CAFUITableHeaderFooterViews.viewsByIdentifiers + 64;
  v51 = 1 << *(static CAFUITableHeaderFooterViews.viewsByIdentifiers + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(static CAFUITableHeaderFooterViews.viewsByIdentifiers + 64);
  v54 = (v51 + 63) >> 6;

  v55 = 0;
  if (v53)
  {
    while (1)
    {
      v56 = v55;
LABEL_28:
      v57 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v58 = (*(v49 + 48) + 16 * (v57 | (v56 << 6)));
      v59 = *v58;
      v60 = v58[1];
      v61 = swift_getObjCClassFromMetadata();

      v62 = MEMORY[0x245D0D180](v59, v60);
      [v1 registerClass:v61 forHeaderFooterViewReuseIdentifier:v62];

      if (!v53)
      {
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
LABEL_24:
    v56 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      goto LABEL_32;
    }

    if (v56 >= v54)
    {
      break;
    }

    v53 = *(v50 + 8 * v56);
    ++v55;
    if (v53)
    {
      v55 = v56;
      goto LABEL_28;
    }
  }

  [v1 setDataSource_];
  [v1 setDelegate_];
}

Swift::Void __swiftcall CAFUIPickerViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = type metadata accessor for CAFUIPickerViewController();
  v15.receiver = v1;
  v15.super_class = v10;
  objc_msgSendSuper2(&v15, sel_viewWillAppear_, a1);
  v11 = *&v1[OBJC_IVAR____TtC5CAFUI24CAFUITableViewController_tableView];
  v12 = [v11 indexPathForSelectedRow];
  if (v12)
  {
    v13 = v12;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 32))(v9, v7, v3);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v11 deselectRowAtIndexPath:isa animated:a1];

    (*(v4 + 8))(v9, v3);
  }
}

uint64_t CAFUIPickerViewController.tableView(_:cellForRowAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for CAFUIPickerTableCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = MEMORY[0x245D0D180](v8);
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = [a1 dequeueReusableCellWithIdentifier:v7 forIndexPath:isa];

  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    CAFUIPickerTableCell.configure(for:indexPath:)(*(v3 + OBJC_IVAR____TtC5CAFUI25CAFUIPickerViewController_representable), *(v3 + OBJC_IVAR____TtC5CAFUI25CAFUIPickerViewController_representable + 8), a2);
    return v12;
  }

  else
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t @objc CAFUIPickerViewController.tableView(_:canMoveRowAt:)()
{
  v0 = type metadata accessor for IndexPath();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v1 + 8))(v3, v0);
  return 0;
}

void CAFUIPickerViewController.tableView(_:didSelectRowAt:)(void *a1)
{
  v2 = v1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectRowAtIndexPath:isa animated:1];

  v5 = *(v2 + OBJC_IVAR____TtC5CAFUI25CAFUIPickerViewController_representable + 8);
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 16))(ObjectType, v5);
  v8 = IndexPath.row.getter();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v8 >= *(v7 + 16))
  {
LABEL_12:
    __break(1u);
    return;
  }

  v9 = *(v7 + 40 * v8 + 64);

  if ((v9 & 1) == 0)
  {
    v10 = IndexPath.row.getter();
    if (*((*(v5 + 72))(v10, ObjectType, v5) + 16))
    {
      type metadata accessor for IndexPath();
      v11 = Array._bridgeToObjectiveC()().super.isa;

      [a1 reconfigureRowsAtIndexPaths_];
    }

    else
    {
    }
  }
}

uint64_t CAFUIPickerViewController.__ivar_destroyer()
{
  swift_unknownObjectRelease();
}

id CAFUIPickerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUIPickerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double specialized CAFUIPickerViewController.tableView(_:heightForFooterInSection:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC5CAFUI25CAFUIPickerViewController_representable + 8);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 64))(ObjectType, v1);
  if (!v4)
  {
    return 0.0;
  }

  v5 = v3;
  v6 = v4;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  result = *MEMORY[0x277D76F30];
  if (!v7)
  {
    return 0.0;
  }

  return result;
}

uint64_t specialized CAFUIPickerViewController.tableView(_:viewForFooterInSection:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5CAFUI25CAFUIPickerViewController_representable + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 64))(ObjectType, v3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v5;
  type metadata accessor for CAFUIFooterView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = MEMORY[0x245D0D180](v12);
  }

  v13 = [a1 dequeueReusableHeaderFooterViewWithIdentifier_];

  if (!v13)
  {
LABEL_10:

    return 0;
  }

  v14 = swift_dynamicCastClass();
  v15 = v14;
  if (v14)
  {
    v16 = (v14 + OBJC_IVAR____TtC5CAFUI15CAFUIFooterView_title);
    *v16 = v9;
    v16[1] = v7;

    CAFUIFooterView.title.didset();
  }

  else
  {
  }

  return v15;
}

id static UIFont.cafui_preferredFont(for:weight:size:rounded:)(uint64_t a1, uint64_t a2, char a3, char a4, double a5)
{
  if (a3)
  {
    v8 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
    [v8 pointSize];
    v10 = v9;

    if ((a4 & 1) == 0)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v10 = *&a2;
    if ((a4 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  result = [objc_opt_self() _preferredFontForTextStyle_design_variant_];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v13 = result;
  v11 = [result fontWithSize_];

LABEL_7:
  v14 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  if (!v11)
  {
    v11 = [objc_opt_self() systemFontOfSize:v10 weight:a5];
  }

  v15 = [v14 scaledFontForFont_];

  return v15;
}

id static UIFont.cafui_preferredFontRoundedVariant(forTextStyle:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() _preferredFontForTextStyle_variant_];

  return v1;
}

id static UIFont.cafui_headerFont.getter(void *a1)
{
  v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v2 = [objc_opt_self() fontWithDescriptor:v1 size:0.0];

  return v2;
}

uint64_t Image.init(automakerSymbolName:)(uint64_t a1, uint64_t a2)
{
  v4 = CAFUIFrameworkBundle();
  v5 = MEMORY[0x245D0D180](a1, a2);
  v6 = [objc_opt_self() imageNamed:v5 inBundle:v4];

  if (v6)
  {

    v7 = CAFUIFrameworkBundle();

    return Image.init(_:bundle:)();
  }

  else
  {

    return Image.init(_internalSystemName:)();
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIButton) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t one-time initialization function for prominentCellCornerRadius()
{
  result = _UISolariumEnabled();
  v1 = 10.0;
  if (result)
  {
    v1 = 14.0;
  }

  static CAFUIProminentSettingCell.Constants.Cell.prominentCellCornerRadius = *&v1;
  return result;
}

double static CAFUIProminentSettingCell.Constants.Cell.prominentCellCornerRadius.getter()
{
  if (one-time initialization token for prominentCellCornerRadius != -1)
  {
    swift_once();
  }

  return *&static CAFUIProminentSettingCell.Constants.Cell.prominentCellCornerRadius;
}

void *CAFUIProminentSettingCell.effectiveRepresentable.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable);
  if (*(v0 + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable))
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      v2 = CAFStaticSetting.firstChild.getter();
      if (v2)
      {
        v3 = v2;
        objc_opt_self();
        v4 = swift_dynamicCastObjCClass();
        if (v4)
        {
          v5 = v4;
          v3 = v3;
          if (![v5 hasHidden])
          {

            swift_unknownObjectRelease();
            return v5;
          }

          v6 = [v5 hidden];

          swift_unknownObjectRelease();
          if ((v6 & 1) == 0)
          {
            return v5;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  v5 = *v1;
  swift_unknownObjectRetain();
  return v5;
}

BOOL CAFUIProminentSettingCell.isHighlightable.getter()
{
  result = 0;
  if ((*(v0 + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor) & 1) == 0)
  {
    if (!*(v0 + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable))
    {
      return 1;
    }

    v1 = *(v0 + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable + 8);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 40);
    swift_unknownObjectRetain();
    LOBYTE(v1) = v3(ObjectType, v1);
    swift_unknownObjectRelease();
    if (v1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t CAFUIProminentSettingCell.isCellEnabled.getter()
{
  if (*(v0 + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor))
  {
    return 0;
  }

  if (!*(v0 + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable))
  {
    return 1;
  }

  v2 = *(v0 + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v2) = v4(ObjectType, v2);
  swift_unknownObjectRelease();
  return v2 & 1;
}

id CAFUIProminentSettingCell.primaryTextColor.getter()
{
  v1 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor;
  if (v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor])
  {
    goto LABEL_9;
  }

  v2 = &v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable];
  if (!*&v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable])
  {
    goto LABEL_7;
  }

  v3 = v0;
  v4 = v2[1];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 40);
  swift_unknownObjectRetain();
  v7 = v6(ObjectType, v4);
  swift_unknownObjectRelease();
  if ((v7 & 1) == 0)
  {
LABEL_9:
    v14 = &selRef_systemGrayColor;
    goto LABEL_10;
  }

  if (v3[v1])
  {
    goto LABEL_8;
  }

  v0 = v3;
  if (*v2)
  {
    v8 = v2[1];
    v9 = swift_getObjectType();
    v10 = *(v8 + 40);
    swift_unknownObjectRetain();
    v0 = v3;
    LOBYTE(v8) = v10(v9, v8);
    swift_unknownObjectRelease();
    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_7:
  v11 = [v0 contentView];
  v12 = [v11 traitCollection];

  v13 = [v12 userInterfaceStyle];
  if (v13 == 1 || ([v0 isSelected] & 1) == 0 && (objc_msgSend(v0, sel_isHighlighted) & 1) == 0 && (!*v2 || (objc_opt_self(), !swift_dynamicCastObjCClass()) || (objc_msgSend(*&v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonSymbolView], sel_isHighlighted) & 1) == 0))
  {
LABEL_8:
    v14 = &selRef__carSystemPrimaryColor;
    goto LABEL_10;
  }

  v14 = &selRef__carSystemFocusLabelColor;
LABEL_10:
  v15 = [objc_opt_self() *v14];

  return v15;
}

id CAFUIProminentSettingCell.secondaryTextColor.getter()
{
  v1 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor;
  if ((v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor] & 1) == 0)
  {
    v2 = &v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable];
    if (!*&v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable])
    {
      goto LABEL_7;
    }

    v3 = v0;
    v4 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 40);
    swift_unknownObjectRetain();
    v7 = v6(ObjectType, v4);
    swift_unknownObjectRelease();
    if (v7)
    {
      if ((v3[v1] & 1) != 0 || (v0 = v3, *v2) && (v8 = *(v2 + 1), v9 = swift_getObjectType(), v10 = *(v8 + 40), swift_unknownObjectRetain(), v0 = v3, LOBYTE(v8) = v10(v9, v8), swift_unknownObjectRelease(), (v8 & 1) == 0))
      {
LABEL_8:
        v14 = &selRef_secondaryLabelColor;
        goto LABEL_10;
      }

LABEL_7:
      v11 = [v0 contentView];
      v12 = [v11 traitCollection];

      v13 = [v12 userInterfaceStyle];
      if (v13 != 1)
      {
        if ([v0 isSelected] & 1) != 0 || (objc_msgSend(v0, sel_isHighlighted) & 1) != 0 || *v2 && (objc_opt_self(), swift_dynamicCastObjCClass()) && (objc_msgSend(*&v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonSymbolView], sel_isHighlighted))
        {
          v14 = &selRef__carSystemFocusPrimaryColor;
        }

        else
        {
          v14 = &selRef__carSystemSecondaryColor;
        }

        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

  v14 = &selRef_systemGrayColor;
LABEL_10:
  v15 = [objc_opt_self() *v14];

  return v15;
}

id CAFUIProminentSettingCell.cellBackgroundColor.getter()
{
  v3 = v0;
  if (CAFUIProminentSettingCell.effectiveRepresentable.getter())
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v1 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor;
      if (v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor])
      {
        do
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
                v5 = [result on];
                v6 = objc_opt_self();
                if (v5)
                {
                  v7 = [v6 systemWhiteColor];
                  goto LABEL_46;
                }

                v25 = [v6 tableCellPlainBackgroundColor];
                if (v25)
                {
                  goto LABEL_47;
                }

                __break(1u);
LABEL_29:
                result = v35;
                if ((v3[v1] & 1) == 0)
                {
                  v1 = &v3[v2[130]];
                  if (!*v1 || (v26 = *(v1 + 8), ObjectType = swift_getObjectType(), v2 = *(v26 + 40), swift_unknownObjectRetain(), LOBYTE(v26) = (v2)(ObjectType, v26), swift_unknownObjectRelease(), result = v35, (v26 & 1) != 0))
                  {
                    v28 = [*&v3[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonSymbolView] isHighlighted];
                    result = v35;
                    if (v28)
                    {
                      break;
                    }
                  }
                }
              }

              v29 = CAFUIProminentSettingCell.effectiveRepresentable.getter();
              v30 = *v1;
              if (v29)
              {
                break;
              }

              result = v35;
              if (!v30)
              {
                swift_unknownObjectRetain();
                goto LABEL_45;
              }
            }

            if (v30)
            {
              break;
            }

            v3 = v29;
            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            result = v35;
          }

          v3 = v29;
          swift_unknownObjectRelease();
          result = v35;
        }

        while (v3 != v30);
        if (*v1)
        {
          v31 = *(v1 + 8);
          v32 = swift_getObjectType();
          v33 = *(v31 + 104);
          swift_unknownObjectRetain();
          v23 = v33(v32, v31);
          swift_unknownObjectRelease();
          if (v23)
          {
            if (![v23 color])
            {
              goto LABEL_44;
            }

            goto LABEL_26;
          }
        }

LABEL_45:
        v7 = [objc_opt_self() systemCyanColor];
LABEL_46:
        v25 = v7;
LABEL_47:
        v15 = v25;
        swift_unknownObjectRelease();
        return v15;
      }

LABEL_19:
      v35 = result;
      v2 = &OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsSections;
      v16 = &v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable];
      if (*&v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable])
      {
        v17 = v16[1];
        v18 = swift_getObjectType();
        v19 = *(v17 + 40);
        swift_unknownObjectRetain();
        LOBYTE(v17) = v19(v18, v17);
        swift_unknownObjectRelease();
        if ((v17 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      if (([v0 isSelected] & 1) == 0 && !objc_msgSend(v0, sel_isHighlighted))
      {
        goto LABEL_29;
      }

      if (*v16)
      {
        v20 = v16[1];
        v21 = swift_getObjectType();
        v22 = *(v20 + 104);
        swift_unknownObjectRetain();
        v23 = v22(v21, v20);
        swift_unknownObjectRelease();
        if (v23)
        {
          if ([v23 color])
          {
LABEL_26:
            v24 = UIColorFromCAFImageColor([v23 color]);

            swift_unknownObjectRelease();
            return v24;
          }

LABEL_44:
        }
      }

      goto LABEL_45;
    }

    swift_unknownObjectRelease();
  }

  if ((v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor] & 1) != 0 || (v8 = &v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable], *&v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable]) && (v9 = v8[1], v10 = swift_getObjectType(), v1 = *(v9 + 40), swift_unknownObjectRetain(), LOBYTE(v9) = (v1)(v10, v9), swift_unknownObjectRelease(), (v9 & 1) == 0) || ([v0 isSelected] & 1) == 0 && (objc_msgSend(v0, sel_isHighlighted) & 1) == 0 && !objc_msgSend(*&v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonSymbolView], sel_isHighlighted))
  {
    result = [objc_opt_self() tableCellPlainBackgroundColor];
    if (result)
    {
      return result;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (*v8)
  {
    v11 = v8[1];
    v12 = swift_getObjectType();
    v13 = *(v11 + 104);
    swift_unknownObjectRetain();
    v14 = v13(v12, v11);
    swift_unknownObjectRelease();
    if (v14)
    {
      if ([v14 color])
      {
        v15 = UIColorFromCAFImageColor([v14 color]);

        return v15;
      }
    }
  }

  v34 = [objc_opt_self() systemCyanColor];

  return v34;
}

void CAFUIProminentSettingCell.configButtonColorForBooleanSetting(_:)(void *a1)
{
  v2 = v1;
  v111 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v110 = &v103 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v103 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v109 = &v103 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v108 = &v103 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v107 = &v103 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v103 - v19;
  MEMORY[0x28223BE20](v18);
  v106 = &v103 - v21;
  v22 = *&v1[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonCircleView];
  [v22 setOverrideUserInterfaceStyle_];
  v112 = v22;
  v23 = [v22 layer];
  [v23 setCompositingFilter_];

  v24 = *&v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonSymbolView];
  v25 = [v24 layer];
  [v25 setCompositingFilter_];

  v26 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor;
  if (v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor])
  {
    goto LABEL_17;
  }

  v27 = *&v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable];
  v105 = &v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable];
  if (!v27)
  {
    goto LABEL_7;
  }

  v28 = v24;
  v29 = *&v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable + 8];
  ObjectType = swift_getObjectType();
  v104 = v20;
  v31 = ObjectType;
  v32 = v11;
  v33 = *(v29 + 40);
  swift_unknownObjectRetain();
  v34 = v31;
  v20 = v104;
  v35 = v29;
  v24 = v28;
  v36 = v33(v34, v35);
  v11 = v32;
  v37 = v36;
  swift_unknownObjectRelease();
  if ((v37 & 1) == 0)
  {
LABEL_17:
    UIButton.configuration.getter();
    v54 = type metadata accessor for UIButton.Configuration();
    if ((*(*(v54 - 8) + 48))(v6, 1, v54))
    {
      outlined init with copy of NotificationModel.Symbol?(v6, v20, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
      UIButton.configuration.setter();
      outlined destroy of RequestTemporaryContentModel?(v6, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
LABEL_31:
      v73 = v112;
      v74 = [objc_opt_self() clearColor];
      [v73 setBackgroundColor_];

      return;
    }

    if (*&v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable])
    {
      v55 = *&v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable + 8];
      v56 = swift_getObjectType();
      v57 = *(v55 + 104);
      swift_unknownObjectRetain();
      v58 = v57(v56, v55);
      swift_unknownObjectRelease();
      if (v58)
      {
        if ([v58 color])
        {
          UIColorFromCAFImageColor([v58 color]);

LABEL_30:
          UIButton.Configuration.baseForegroundColor.setter();
          UIButton.configuration.setter();
          goto LABEL_31;
        }
      }
    }

    v72 = [objc_opt_self() systemCyanColor];
    goto LABEL_30;
  }

  if (v2[v26])
  {
    goto LABEL_12;
  }

  if (!*v105 || (v38 = v105[1], v39 = swift_getObjectType(), v40 = *(v38 + 40), swift_unknownObjectRetain(), v41 = v40(v39, v38), v11 = v32, v20 = v104, LOBYTE(v38) = v41, swift_unknownObjectRelease(), (v38 & 1) != 0))
  {
LABEL_7:
    v42 = [v24 isHighlighted];
    if (v2[v26])
    {
      goto LABEL_37;
    }

    goto LABEL_8;
  }

  v42 = 0;
  if (v2[v26])
  {
    goto LABEL_37;
  }

LABEL_8:
  if (*v105)
  {
    v43 = v105[1];
    v44 = v20;
    v45 = swift_getObjectType();
    v46 = *(v43 + 40);
    swift_unknownObjectRetain();
    v47 = v45;
    v20 = v44;
    LOBYTE(v43) = v46(v47, v43);
    swift_unknownObjectRelease();
    if ((v43 & 1) == 0)
    {
LABEL_37:
      if (!v42)
      {
        goto LABEL_12;
      }

LABEL_38:
      v79 = objc_opt_self();
      v80 = [v79 tertiarySystemFillColor];
      v81 = v112;
      [v112 setBackgroundColor_];

      v82 = [v111 on];
      v83 = [v2 traitCollection];
      v84 = [v83 userInterfaceStyle];

      if (v82)
      {
        if (v84 == 1)
        {
          v85 = [v79 systemBlackColor];
          v86 = [v85 colorWithAlphaComponent_];

          [v81 setBackgroundColor_];
          v87 = v106;
          UIButton.configuration.getter();
          v88 = type metadata accessor for UIButton.Configuration();
          if (!(*(*(v88 - 8) + 48))(v87, 1, v88))
          {
            v98 = [v79 systemBlackColor];
            UIButton.Configuration.baseForegroundColor.setter();
            goto LABEL_61;
          }

          outlined init with copy of NotificationModel.Symbol?(v87, v20, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
          UIButton.configuration.setter();
          v71 = v87;
LABEL_56:
          outlined destroy of RequestTemporaryContentModel?(v71, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
          return;
        }

        v94 = [v81 layer];
        v95 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
        [v94 setCompositingFilter_];

        [v81 setOverrideUserInterfaceStyle_];
        v91 = v107;
        UIButton.configuration.getter();
        v96 = type metadata accessor for UIButton.Configuration();
        if (!(*(*(v96 - 8) + 48))(v91, 1, v96))
        {
          goto LABEL_50;
        }
      }

      else
      {
        [v81 setOverrideUserInterfaceStyle_];
        v89 = [v81 layer];
        v90 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
        [v89 setCompositingFilter_];

        if (v84 == 1)
        {
          v91 = v108;
          UIButton.configuration.getter();
          v92 = type metadata accessor for UIButton.Configuration();
          if (!(*(*(v92 - 8) + 48))(v91, 1, v92))
          {
            v93 = [v79 systemWhiteColor];
LABEL_51:
            v99 = v93;
            UIButton.Configuration.baseForegroundColor.setter();
            goto LABEL_61;
          }
        }

        else
        {
          v91 = v109;
          UIButton.configuration.getter();
          v97 = type metadata accessor for UIButton.Configuration();
          if (!(*(*(v97 - 8) + 48))(v91, 1, v97))
          {
LABEL_50:
            v93 = [v79 systemBlackColor];
            goto LABEL_51;
          }
        }
      }

      outlined init with copy of NotificationModel.Symbol?(v91, v20, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
      UIButton.configuration.setter();
      v71 = v91;
      goto LABEL_56;
    }
  }

  if ([v2 isHighlighted] & 1) != 0 || ((v42 | objc_msgSend(v2, sel_isSelected)))
  {
    goto LABEL_38;
  }

LABEL_12:
  if (![v111 on])
  {
    v59 = [v2 traitCollection];
    v60 = [v59 userInterfaceStyle] == 1;

    v61 = dbl_242427E20[v60];
    v62 = objc_opt_self();
    v63 = [v62 systemBlackColor];
    v64 = [v63 colorWithAlphaComponent_];

    [v112 setBackgroundColor_];
    v65 = [v24 layer];
    v66 = [v2 traitCollection];
    v67 = [v66 userInterfaceStyle];

    if (v67 == 1)
    {
      v68 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    }

    else
    {
      v68 = 0;
    }

    v69 = v110;
    [v65 setCompositingFilter_];

    UIButton.configuration.getter();
    v70 = type metadata accessor for UIButton.Configuration();
    if ((*(*(v70 - 8) + 48))(v69, 1, v70))
    {
      outlined init with copy of NotificationModel.Symbol?(v69, v20, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
      UIButton.configuration.setter();
      v71 = v69;
      goto LABEL_56;
    }

    if (*v105)
    {
      v75 = v105[1];
      v76 = swift_getObjectType();
      v77 = *(v75 + 104);
      swift_unknownObjectRetain();
      v78 = v77(v76, v75);
      swift_unknownObjectRelease();
      if (v78)
      {
        if ([v78 color])
        {
          UIColorFromCAFImageColor([v78 color]);

LABEL_60:
          UIButton.Configuration.baseForegroundColor.setter();
          goto LABEL_61;
        }
      }
    }

    v102 = [v62 systemCyanColor];
    goto LABEL_60;
  }

  v48 = v112;
  [v112 setOverrideUserInterfaceStyle_];
  if (!*v105)
  {
    goto LABEL_53;
  }

  v49 = v105[1];
  v50 = swift_getObjectType();
  v51 = *(v49 + 104);
  swift_unknownObjectRetain();
  v52 = v51(v50, v49);
  swift_unknownObjectRelease();
  if (!v52)
  {
    goto LABEL_53;
  }

  if (![v52 color])
  {

LABEL_53:
    v53 = [objc_opt_self() systemCyanColor];
    goto LABEL_54;
  }

  v53 = UIColorFromCAFImageColor([v52 color]);

LABEL_54:
  [v48 setBackgroundColor_];

  UIButton.configuration.getter();
  v100 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v100 - 8) + 48))(v11, 1, v100))
  {
    outlined init with copy of NotificationModel.Symbol?(v11, v20, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
    UIButton.configuration.setter();
    v71 = v11;
    goto LABEL_56;
  }

  v101 = [objc_opt_self() systemWhiteColor];
  UIButton.Configuration.baseForegroundColor.setter();
LABEL_61:
  UIButton.configuration.setter();
}

void CAFUIProminentSettingCell.configButtonColorFor1stChildBooleanSetting(_:)(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v136 = &v130 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v137 = &v130 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v135 = &v130 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v134 = &v130 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v132 = &v130 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v131 = &v130 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v139 = &v130 - v21;
  MEMORY[0x28223BE20](v20);
  v138 = &v130 - v22;
  v23 = *&v1[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonCircleView];
  [v23 setOverrideUserInterfaceStyle_];
  v24 = [v23 layer];
  [v24 setCompositingFilter_];

  v25 = *&v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonSymbolView];
  v26 = [v25 layer];
  [v26 setCompositingFilter_];

  v27 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor;
  if (v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor])
  {
    goto LABEL_13;
  }

  v28 = *&v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable];
  v133 = &v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable];
  if (!v28)
  {
    goto LABEL_7;
  }

  v130 = v25;
  v29 = *&v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable + 8];
  ObjectType = swift_getObjectType();
  v31 = a1;
  v32 = *(v29 + 40);
  swift_unknownObjectRetain();
  v33 = v29;
  v25 = v130;
  v34 = v32(ObjectType, v33);
  a1 = v31;
  LOBYTE(ObjectType) = v34;
  swift_unknownObjectRelease();
  if ((ObjectType & 1) == 0)
  {
LABEL_13:
    v48 = objc_opt_self();
    v49 = [v48 clearColor];
    [v23 setBackgroundColor_];

    UIButton.configuration.getter();
    v50 = type metadata accessor for UIButton.Configuration();
    if ((*(*(v50 - 8) + 48))(v7, 1, v50))
    {
      outlined init with copy of NotificationModel.Symbol?(v7, v139, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
      UIButton.configuration.setter();
      outlined destroy of RequestTemporaryContentModel?(v7, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
      return;
    }

    if (*&v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable])
    {
      v51 = *&v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable + 8];
      v52 = swift_getObjectType();
      v53 = *(v51 + 104);
      swift_unknownObjectRetain();
      v54 = v53(v52, v51);
      swift_unknownObjectRelease();
      if (v54)
      {
        if ([v54 color])
        {
          UIColorFromCAFImageColor([v54 color]);

LABEL_26:
          UIButton.Configuration.baseForegroundColor.setter();
          UIButton.configuration.setter();
          return;
        }
      }
    }

    v61 = [v48 systemCyanColor];
    goto LABEL_26;
  }

  if (v2[v27])
  {
    goto LABEL_31;
  }

  if (!*v133 || (v35 = v133[1], v36 = swift_getObjectType(), v37 = *(v35 + 40), swift_unknownObjectRetain(), v38 = v37(v36, v35), a1 = v31, v25 = v130, LOBYTE(v35) = v38, swift_unknownObjectRelease(), (v35 & 1) != 0))
  {
LABEL_7:
    v39 = [v25 isHighlighted];
    if (v2[v27])
    {
      goto LABEL_28;
    }

    goto LABEL_8;
  }

  v39 = 0;
  if (v2[v27])
  {
    goto LABEL_28;
  }

LABEL_8:
  if (*v133)
  {
    v40 = v133[1];
    v41 = swift_getObjectType();
    v130 = v2;
    v42 = v23;
    v43 = v41;
    v44 = v25;
    v45 = *(v40 + 40);
    swift_unknownObjectRetain();
    v46 = v43;
    v23 = v42;
    v2 = v130;
    v47 = v45(v46, v40);
    v25 = v44;
    LOBYTE(v40) = v47;
    swift_unknownObjectRelease();
    if ((v40 & 1) == 0)
    {
LABEL_28:
      if (v39)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

  if (![v2 isHighlighted])
  {
    v55 = [v2 isSelected];
    if (v39)
    {
      goto LABEL_29;
    }

    if (v55)
    {
      goto LABEL_21;
    }

LABEL_31:
    v64 = [a1 on];
    v65 = [v2 traitCollection];
    v66 = [v65 userInterfaceStyle];

    if (v64)
    {
      if (v66 == 1)
      {
        v78 = v134;
        UIButton.configuration.getter();
        v67 = type metadata accessor for UIButton.Configuration();
        if ((*(*(v67 - 8) + 48))(v78, 1, v67))
        {
LABEL_46:
          outlined init with copy of NotificationModel.Symbol?(v78, v139, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
          UIButton.configuration.setter();
          outlined destroy of RequestTemporaryContentModel?(v78, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
LABEL_59:
          [v23 setOverrideUserInterfaceStyle_];
          if (!*v133)
          {
            goto LABEL_86;
          }

          v92 = v133[1];
          v93 = swift_getObjectType();
          v94 = *(v92 + 104);
          swift_unknownObjectRetain();
          v95 = v94(v93, v92);
          swift_unknownObjectRelease();
          if (!v95)
          {
            goto LABEL_86;
          }

          if (![v95 color])
          {

            goto LABEL_86;
          }

LABEL_62:
          v96 = UIColorFromCAFImageColor([v95 color]);
LABEL_99:
          v113 = v96;

          goto LABEL_100;
        }
      }

      else
      {
        v78 = v135;
        UIButton.configuration.getter();
        v79 = type metadata accessor for UIButton.Configuration();
        if ((*(*(v79 - 8) + 48))(v78, 1, v79))
        {
          goto LABEL_46;
        }
      }

      v91 = [objc_opt_self() systemWhiteColor];
      UIButton.Configuration.baseForegroundColor.setter();
      UIButton.configuration.setter();
      goto LABEL_59;
    }

    if (v66 != 1)
    {
      v81 = v136;
      UIButton.configuration.getter();
      v82 = type metadata accessor for UIButton.Configuration();
      if ((*(*(v82 - 8) + 48))(v81, 1, v82))
      {
        outlined init with copy of NotificationModel.Symbol?(v81, v139, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
        UIButton.configuration.setter();
        outlined destroy of RequestTemporaryContentModel?(v81, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
LABEL_98:
        v95 = [objc_opt_self() systemBlackColor];
        v96 = [v95 colorWithAlphaComponent_];
        goto LABEL_99;
      }

      if (*v133)
      {
        v97 = v133[1];
        v98 = swift_getObjectType();
        v99 = *(v97 + 104);
        swift_unknownObjectRetain();
        v100 = v99(v98, v97);
        swift_unknownObjectRelease();
        if (v100)
        {
          if ([v100 color])
          {
            UIColorFromCAFImageColor([v100 color]);

LABEL_97:
            UIButton.Configuration.baseForegroundColor.setter();
            UIButton.configuration.setter();
            goto LABEL_98;
          }
        }
      }

      v121 = [objc_opt_self() systemCyanColor];
      goto LABEL_97;
    }

    v68 = [v25 layer];
    v69 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    [v68 setCompositingFilter_];

    v70 = v137;
    UIButton.configuration.getter();
    v71 = type metadata accessor for UIButton.Configuration();
    if ((*(*(v71 - 8) + 48))(v70, 1, v71))
    {
      outlined init with copy of NotificationModel.Symbol?(v70, v139, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
      UIButton.configuration.setter();
      outlined destroy of RequestTemporaryContentModel?(v70, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
LABEL_94:
      v95 = [objc_opt_self() systemBlackColor];
      v96 = [v95 colorWithAlphaComponent_];
      goto LABEL_99;
    }

    if (*v133)
    {
      v87 = v133[1];
      v88 = swift_getObjectType();
      v89 = *(v87 + 104);
      swift_unknownObjectRetain();
      v90 = v89(v88, v87);
      swift_unknownObjectRelease();
      if (v90)
      {
        if ([v90 color])
        {
          UIColorFromCAFImageColor([v90 color]);

LABEL_93:
          UIButton.Configuration.baseForegroundColor.setter();
          UIButton.configuration.setter();
          goto LABEL_94;
        }
      }
    }

    v120 = [objc_opt_self() systemCyanColor];
    goto LABEL_93;
  }

  if (v39)
  {
LABEL_29:
    v62 = v138;
    UIButton.configuration.getter();
    v63 = type metadata accessor for UIButton.Configuration();
    if ((*(*(v63 - 8) + 48))(v62, 1, v63))
    {
      outlined init with copy of NotificationModel.Symbol?(v62, v139, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
      UIButton.configuration.setter();
      outlined destroy of RequestTemporaryContentModel?(v62, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
LABEL_77:
      if ([a1 on])
      {
        v107 = [v2 traitCollection];
        v108 = [v107 userInterfaceStyle];

        if (v108 == 1)
        {
          v109 = 0.1;
        }

        else
        {
          v109 = 1.0;
        }

        v95 = [objc_opt_self() systemBlackColor];
        v96 = [v95 colorWithAlphaComponent_];
        goto LABEL_99;
      }

      [v23 setOverrideUserInterfaceStyle_];
      if (!*v133 || (v110 = v133[1], v111 = swift_getObjectType(), v112 = *(v110 + 104), swift_unknownObjectRetain(), v95 = v112(v111, v110), swift_unknownObjectRelease(), !v95))
      {
LABEL_86:
        v113 = [objc_opt_self() systemCyanColor];
LABEL_100:
        [v23 setBackgroundColor_];
LABEL_101:

        return;
      }

      if (![v95 color])
      {

        goto LABEL_86;
      }

      goto LABEL_62;
    }

    if ([a1 on])
    {
      if (*v133)
      {
        v72 = v133[1];
        v73 = a1;
        v74 = swift_getObjectType();
        v75 = *(v72 + 104);
        swift_unknownObjectRetain();
        v76 = v74;
        a1 = v73;
        v77 = v75(v76, v72);
        swift_unknownObjectRelease();
        if (v77)
        {
          if ([v77 color])
          {
            UIColorFromCAFImageColor([v77 color]);

LABEL_76:
            UIButton.Configuration.baseForegroundColor.setter();
            UIButton.configuration.setter();
            goto LABEL_77;
          }
        }
      }

      v106 = [objc_opt_self() systemCyanColor];
      goto LABEL_76;
    }

    v84 = [objc_opt_self() systemWhiteColor];
    goto LABEL_76;
  }

LABEL_21:
  v56 = [v2 traitCollection];
  v57 = [v56 userInterfaceStyle];

  if (v57 != 1)
  {
    v85 = v132;
    UIButton.configuration.getter();
    v86 = type metadata accessor for UIButton.Configuration();
    if ((*(*(v86 - 8) + 48))(v85, 1, v86))
    {
      outlined init with copy of NotificationModel.Symbol?(v85, v139, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
      UIButton.configuration.setter();
      v60 = v85;
      goto LABEL_52;
    }

    if ([a1 on])
    {
      v105 = [objc_opt_self() systemWhiteColor];
    }

    else
    {
      if (*v133)
      {
        v114 = v133[1];
        v115 = swift_getObjectType();
        v139 = a1;
        v116 = v115;
        v130 = v25;
        v117 = *(v114 + 104);
        swift_unknownObjectRetain();
        v118 = v116;
        a1 = v139;
        v119 = v117(v118, v114);
        swift_unknownObjectRelease();
        if (v119)
        {
          if ([v119 color])
          {
            UIColorFromCAFImageColor([v119 color]);

LABEL_105:
            UIButton.Configuration.baseForegroundColor.setter();
            goto LABEL_106;
          }
        }
      }

      v105 = [objc_opt_self() systemCyanColor];
    }

    v122 = v105;
    goto LABEL_105;
  }

  v58 = v131;
  UIButton.configuration.getter();
  v59 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v59 - 8) + 48))(v58, 1, v59))
  {
    outlined init with copy of NotificationModel.Symbol?(v58, v139, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
    UIButton.configuration.setter();
    v60 = v58;
LABEL_52:
    outlined destroy of RequestTemporaryContentModel?(v60, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
    goto LABEL_107;
  }

  v101 = [a1 on];
  v102 = objc_opt_self();
  v103 = &selRef_systemWhiteColor;
  if (!v101)
  {
    v103 = &selRef_systemBlackColor;
  }

  v104 = [v102 *v103];
  UIButton.Configuration.baseForegroundColor.setter();
LABEL_106:
  UIButton.configuration.setter();
LABEL_107:
  if ([a1 on])
  {
    [v23 &selRef:2 imageWithTintColor:? + 4];
    v123 = [objc_opt_self() tertiarySystemFillColor];
    [v23 setBackgroundColor_];

    v124 = [v23 layer];
    v113 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    [v124 setCompositingFilter_];

    goto LABEL_101;
  }

  v125 = [v2 traitCollection];
  v126 = [v125 userInterfaceStyle];

  if (v126 == 1)
  {
    v127 = [v23 layer];
    v128 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    [v127 setCompositingFilter_];

    [v23 &selRef:1 imageWithTintColor:? + 4];
    v95 = [objc_opt_self() systemBlackColor];
    v96 = [v95 colorWithAlphaComponent_];
    goto LABEL_99;
  }

  v129 = [objc_opt_self() systemBlackColor];
  [v23 setBackgroundColor_];
}

id key path setter for CAFUIProminentSettingCell.customPlatterView : CAFUIProminentSettingCell(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_customPlatterView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  return CAFUIProminentSettingCell.setupDefaultBackground()();
}

void *CAFUIProminentSettingCell.customPlatterView.getter()
{
  v1 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_customPlatterView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CAFUIProminentSettingCell.customPlatterView.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_customPlatterView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  CAFUIProminentSettingCell.setupDefaultBackground()();
}

id (*CAFUIProminentSettingCell.customPlatterView.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CAFUIProminentSettingCell.customPlatterView.modify;
}

id CAFUIProminentSettingCell.customPlatterView.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return CAFUIProminentSettingCell.setupDefaultBackground()();
  }

  return result;
}

id CAFUIProminentSettingCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CAFUIProminentSettingCell.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor) = 0;
  *(v0 + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_customPlatterView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id CAFUIProminentSettingCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *CAFUIProminentSettingCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = aBlock - v11;
  v13 = &v5[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable];
  *v13 = 0;
  v13[1] = 0;
  v5[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor] = 0;
  *&v5[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_customPlatterView] = 0;
  v14 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  *&v5[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonLayoutGuide] = v14;
  v15 = v14;
  v16 = MEMORY[0x245D0D180](0xD000000000000016, 0x800000024242D8C0);
  [v15 setAccessibilityIdentifier_];

  v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) &off_278D49B78];
  v18 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonCircleView;
  *&v5[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonCircleView] = v17;
  [v17 _setCornerRadius_];
  [*&v5[v18] setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = *&v5[v18];
  v20 = MEMORY[0x245D0D180](0xD000000000000024, 0x800000024242D8E0);
  [v19 H];

  v21 = [objc_opt_self() buttonWithType_];
  v22 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonSymbolView;
  *&v5[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonSymbolView] = v21;
  [v21 _setCornerRadius_];
  [*&v5[v22] setTranslatesAutoresizingMaskIntoConstraints_];
  v23 = *&v5[v22];
  v24 = MEMORY[0x245D0D180](0xD00000000000001BLL, 0x800000024242D910);
  [v23 H];

  v25 = *&v5[v22];
  static UIButton.Configuration.plain()();
  v26 = type metadata accessor for UIButton.Configuration();
  (*(*(v26 - 8) + 56))(v12, 0, 1, v26);
  UIButton.configuration.setter();

  v27 = [objc_allocWithZone(MEMORY[0x277D756B8]) &off_278D49B78];
  v28 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_titleLabel;
  *&v5[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_titleLabel] = v27;
  v29 = *MEMORY[0x277D76920];
  v30 = *MEMORY[0x277D74410];
  v31 = objc_opt_self();
  v32 = v27;
  v33 = [v31 preferredFontDescriptorWithTextStyle_];
  [v33 pointSize];
  v35 = v34;

  v36 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v37 = objc_opt_self();
  v38 = [v37 systemFontOfSize:v35 weight:v30];
  v39 = [v36 scaledFontForFont_];

  [v32 setFont_];
  [*&v5[v28] setTranslatesAutoresizingMaskIntoConstraints_];
  v40 = *&v5[v28];
  v41 = MEMORY[0x245D0D180](0xD000000000000015, 0x800000024242D930);
  [v40 setAccessibilityIdentifier_];

  v42 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v43 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_subtitleLabel;
  *&v5[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_subtitleLabel] = v42;
  v44 = *MEMORY[0x277D74418];
  v45 = v42;
  v46 = [v31 preferredFontDescriptorWithTextStyle_];
  [v46 pointSize];
  v48 = v47;

  v49 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v50 = [v37 systemFontOfSize:v48 weight:v44];
  v51 = [v49 scaledFontForFont_];

  [v45 setFont_];
  [*&v5[v43] setTranslatesAutoresizingMaskIntoConstraints_];
  v52 = *&v5[v43];
  v53 = MEMORY[0x245D0D180](0xD000000000000018, 0x800000024242D950);
  [v52 setAccessibilityIdentifier_];

  v54 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v55 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_accessoryView;
  *&v5[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_accessoryView] = v54;
  [v54 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v5[v55] setContentMode_];
  v56 = *&v5[v55];
  v57 = MEMORY[0x245D0D180](0xD000000000000022, 0x800000024242D970);
  [v56 setAccessibilityIdentifier_];

  v58 = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_titleCenterYConstaint] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_modifiableContstraints] = v58;
  v59 = type metadata accessor for CAFUIProminentSettingCell();
  v93.receiver = v5;
  v93.super_class = v59;
  v60 = objc_msgSendSuper2(&v93, sel_initWithFrame_, a1, a2, a3, a4);
  v61 = MEMORY[0x245D0D180](0xD000000000000019, 0x8000000242427E30);
  [v60 setAccessibilityIdentifier_];

  v62 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonSymbolView;
  [*&v60[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonSymbolView] _setTouchInsets_];
  [*&v60[v62] addTarget:v60 action:sel_buttonClicked forControlEvents:64];
  v63 = [v60 layer];
  if (one-time initialization token for prominentCellCornerRadius != -1)
  {
    swift_once();
  }

  [v63 setCornerRadius_];

  v64 = [v60 layer];
  [v64 setMasksToBounds_];

  v65 = [v60 contentView];
  [v65 addLayoutGuide_];

  v66 = [v60 contentView];
  v67 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_titleLabel;
  [v66 addSubview_];

  v68 = [v60 contentView];
  v69 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_subtitleLabel;
  [v68 addSubview_];

  v70 = [v60 contentView];
  [v70 addSubview_];

  v71 = [v60 contentView];
  [v71 addSubview_];

  v72 = [v60 contentView];
  [v72 addSubview_];

  v73 = [v60 contentView];
  v74 = [v73 layer];

  [v74 setAllowsGroupBlending_];
  v75 = v60;
  v76 = [v75 contentView];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_2424235A0;
  v78 = type metadata accessor for UITraitUserInterfaceStyle();
  v79 = MEMORY[0x277D74BF0];
  *(v77 + 32) = v78;
  *(v77 + 40) = v79;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIView);
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  [*&v60[v69] setNumberOfLines_];
  [*&v60[v67] setNumberOfLines_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_242423BD0;
  v81 = [*&v60[v67] centerYAnchor];
  v82 = [v75 contentView];

  v83 = [v82 centerYAnchor];
  v84 = [v81 constraintEqualToAnchor_];

  *(v80 + 32) = v84;
  *&v75[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_titleCenterYConstaint] = v80;

  v85 = objc_opt_self();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v85 activateConstraints_];

  v87 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v88 = *&v60[v62];
  aBlock[4] = partial apply for closure #2 in CAFUIProminentSettingCell.init(frame:);
  aBlock[5] = v87;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIButton) -> ();
  aBlock[3] = &block_descriptor_9;
  v89 = _Block_copy(aBlock);
  v90 = v88;

  [v90 setConfigurationUpdateHandler_];
  _Block_release(v89);

  CAFUIProminentSettingCell.setupDefaultBackground()();

  return v75;
}

void closure #1 in CAFUIProminentSettingCell.init(frame:)()
{
  v0 = type metadata accessor for UICellConfigurationState();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
    (*(v1 + 8))(v3, v0);
    [v5 _bridgedUpdateConfigurationUsingState_];
  }
}

void closure #2 in CAFUIProminentSettingCell.init(frame:)(id a1)
{
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = (Strong + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable);
    if (!*(Strong + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable))
    {
      goto LABEL_23;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      v12 = CAFStaticSetting.firstChild.getter();
      if (v12)
      {
        v13 = v12;
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v15 = v14;
          v34 = a1;
          v16 = v13;
          if (([v15 hasHidden] & 1) == 0)
          {

            swift_unknownObjectRelease();
            goto LABEL_13;
          }

          v17 = [v15 hidden];

          swift_unknownObjectRelease();
          if ((v17 & 1) == 0)
          {
LABEL_13:
            objc_opt_self();
            if (!swift_dynamicCastObjCClass() || *(v10 + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor) == 1 || (v18 = *v11, v33 = v3, v18) && (v19 = v11[1], ObjectType = swift_getObjectType(), v32 = v19[5], swift_unknownObjectRetain(), v21 = v32(ObjectType, v19), swift_unknownObjectRelease(), (v21 & 1) == 0))
            {

              swift_unknownObjectRelease();
              return;
            }

            v22 = [v10 _bridgedConfigurationState];
            static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

            v23 = CAFUIProminentSettingCell.effectiveRepresentable.getter();
            v24 = *v11;
            if (v23)
            {
              if (!v24)
              {
                swift_unknownObjectRetain();
                swift_unknownObjectRelease();
                goto LABEL_32;
              }

              v25 = v23;
              swift_unknownObjectRelease();
              if (v25 != v24)
              {
LABEL_32:
                if (CAFUIProminentSettingCell.effectiveRepresentable.getter())
                {
                  objc_opt_self();
                  v27 = swift_dynamicCastObjCClass();
                  if (v27)
                  {
                    v28 = v27;
                    v29 = CAFUIProminentSettingCell.effectiveRepresentable.getter();
                    v30 = *v11;
                    if (v29)
                    {
                      if (v30)
                      {
                        v31 = v29;
                        swift_unknownObjectRelease();
                        if (v31 != v30)
                        {
                          goto LABEL_42;
                        }

LABEL_40:
                        CAFUIProminentSettingCell.configButtonColorForBooleanSetting(_:)(v28);
LABEL_43:
                        swift_unknownObjectRelease();
                        CAFUIProminentSettingCell.configurePlatterColorsForBoolean(using:)(v8);
                        swift_unknownObjectRelease();

                        (*(v33 + 8))(v8, v2);
                        return;
                      }

                      swift_unknownObjectRetain();
                      swift_unknownObjectRelease();
                    }

                    else if (!v30)
                    {
                      swift_unknownObjectRetain();
                      goto LABEL_40;
                    }

LABEL_42:
                    CAFUIProminentSettingCell.configButtonColorFor1stChildBooleanSetting(_:)(v28);
                    goto LABEL_43;
                  }

                  swift_unknownObjectRelease();
                }

                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
                return;
              }
            }

            else
            {
              if (v24)
              {
                goto LABEL_32;
              }

              swift_unknownObjectRetain();
            }

            if (([v34 state] & 1) == 0)
            {
              v26 = [v10 _bridgedConfigurationState];
              static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

              UICellConfigurationState.isHighlighted.getter();
              (*(v33 + 8))(v6, v2);
            }

            [v34 state];
            UICellConfigurationState.isHighlighted.setter();
            UICellConfigurationState.isSelected.setter();
            goto LABEL_32;
          }

          a1 = v34;
          if (!*v11)
          {
            goto LABEL_23;
          }

LABEL_12:
          v34 = a1;
          swift_unknownObjectRetain();
          goto LABEL_13;
        }

        swift_unknownObjectRelease();

        if (*v11)
        {
          goto LABEL_12;
        }

LABEL_23:

        return;
      }

      swift_unknownObjectRelease();
    }

    if (*v11)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }
}

Swift::Void __swiftcall CAFUIProminentSettingCell.prepareForReuse()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUIProminentSettingCell();
  objc_msgSendSuper2(&v2, sel_prepareForReuse);
  v1 = &v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable];
  *v1 = 0;
  *(v1 + 1) = 0;
  swift_unknownObjectRelease();
  v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor] = 0;
  CAFUIProminentSettingCell.setupDefaultBackground()();
}

uint64_t CAFUIProminentSettingCell.configureCell(for:isDisabledByAncestor:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v230 = type metadata accessor for UICellConfigurationState();
  v229 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v9 = &v221 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for CharacterSet();
  v222 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v221 = &v221 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v232 = &v221 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v221 - v14;
  v16 = &v4[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable];
  *v16 = a1;
  v16[1] = a2;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  v233 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor;
  v4[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor] = a3;
  v17 = CAFUIProminentSettingCell.effectiveRepresentable.getter();
  if (!v17)
  {
LABEL_74:
    swift_unknownObjectRelease();
    goto LABEL_75;
  }

  v18 = v17;
  v19 = objc_opt_self();
  v20 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_modifiableContstraints;
  swift_beginAccess();
  v237 = v20;
  v21 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);

  v225 = v21;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v226 = v19;
  [v19 deactivateConstraints_];

  ObjectType = swift_getObjectType();
  v24 = (*(a2 + 72))(ObjectType, a2);
  v239 = a1;
  v238 = v4;
  v227 = v18;
  v231 = v16;
  v234 = a2;
  v235 = ObjectType;
  v228 = v9;
  if (!v24)
  {
    (*(a2 + 64))(ObjectType, a2);
    if (v25)
    {
      v26 = 0xD000000000000013;

      v27 = 0x800000024242DA10;
    }

    else
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        goto LABEL_26;
      }

      v27 = 0xE800000000000000;
      v26 = 0x322E686374697773;
    }

    v28 = *MEMORY[0x277D76920];
    v29 = objc_opt_self();
    v30 = [v29 configurationWithTextStyle:v28 scale:2];
    v31 = [v29 configurationWithWeight_];
    v32 = [v30 configurationByApplyingConfiguration_];

    v33 = MEMORY[0x245D0D180](v26, v27);

    v34 = CAFUIImageForSymbolNameWithConfiguration(v33, v32);

    if (v34)
    {
      v236 = v34;
      v24 = 0;
      v16 = v231;
      goto LABEL_10;
    }

LABEL_26:
    v232 = *&v4[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonSymbolView];
    [v232 setHidden_];
    [*&v4[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonCircleView] setHidden_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_242423BD0;
    v240 = *&v4[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_titleLabel];
    v122 = [v240 leadingAnchor];
    v123 = [v4 contentView];
    v124 = [v123 leadingAnchor];

    v125 = [v122 constraintEqualToAnchor:v124 constant:12.0];
    v236 = 0;
    *(v49 + 32) = v125;
    v55 = &selRef__systemImageNamed_withConfiguration_;
    v89 = &selRef__systemImageNamed_withConfiguration_;
    goto LABEL_19;
  }

  v236 = v24;
LABEL_10:
  v35 = *&v4[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonCircleView];
  v36 = v24;
  [v35 setHidden_];
  [v35 setOverrideUserInterfaceStyle_];
  v37 = *&v4[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonSymbolView];
  UIButton.configuration.getter();
  v38 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v38 - 8) + 48))(v15, 1, v38))
  {
    outlined init with copy of NotificationModel.Symbol?(v15, v232, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
    UIButton.configuration.setter();
    outlined destroy of RequestTemporaryContentModel?(v15, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  }

  else
  {
    v39 = v236;
    UIButton.Configuration.image.setter();
    UIButton.configuration.setter();
  }

  [v37 setHidden_];
  v40 = v4[v233];
  v240 = v35;
  if ((v40 & 1) != 0 || *v16 && (v41 = v16[1], v42 = swift_getObjectType(), v43 = v37, v44 = *(v41 + 40), swift_unknownObjectRetain(), v45 = v44(v42, v41), v37 = v43, LOBYTE(v41) = v45, swift_unknownObjectRelease(), (v41 & 1) == 0))
  {
    v46 = 0.3;
  }

  else
  {
    v46 = 1.0;
  }

  v47 = [v37 layer];
  *&v48 = v46;
  [v47 setOpacity_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_242427E30;
  v50 = *&v4[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonLayoutGuide];
  v51 = [v50 leadingAnchor];
  v52 = v37;
  v53 = [v4 contentView];
  v54 = [v53 &selRef_integerSettingService_didUpdateMinimumSymbolName_ + 1];

  v55 = &selRef__systemImageNamed_withConfiguration_;
  v56 = [v51 constraintEqualToAnchor_];

  *(v49 + 32) = v56;
  v57 = [v50 centerYAnchor];
  v58 = [v4 contentView];
  v59 = [v58 centerYAnchor];

  v60 = [v57 constraintEqualToAnchor_];
  *(v49 + 40) = v60;
  v61 = [v50 widthAnchor];
  v62 = [v61 constraintEqualToConstant_];

  *(v49 + 48) = v62;
  v63 = [v50 heightAnchor];
  v64 = [v63 constraintEqualToConstant_];

  *(v49 + 56) = v64;
  v65 = [v52 centerXAnchor];
  v66 = [v50 centerXAnchor];
  v67 = [v65 constraintEqualToAnchor_];

  *(v49 + 64) = v67;
  v68 = [v52 centerYAnchor];
  v69 = [v50 centerYAnchor];
  v70 = [v68 constraintEqualToAnchor_];

  *(v49 + 72) = v70;
  v71 = [v52 widthAnchor];
  v72 = [v71 constraintEqualToConstant_];

  *(v49 + 80) = v72;
  v73 = [v52 heightAnchor];
  v74 = [v73 constraintEqualToConstant_];

  *(v49 + 88) = v74;
  v75 = v240;
  v76 = [v240 centerXAnchor];
  v4 = v238;
  v77 = [v52 centerXAnchor];
  v78 = [v76 constraintEqualToAnchor_];

  *(v49 + 96) = v78;
  v79 = [v75 centerYAnchor];
  v80 = [v52 centerYAnchor];
  v81 = [v79 constraintEqualToAnchor_];

  *(v49 + 104) = v81;
  v82 = [v75 widthAnchor];
  v83 = [v52 widthAnchor];
  v84 = [v82 constraintEqualToAnchor_];

  *(v49 + 112) = v84;
  v85 = [v75 heightAnchor];
  v232 = v52;
  v86 = [v52 heightAnchor];
  v87 = [v85 constraintEqualToAnchor_];

  *(v49 + 120) = v87;
  v240 = *&v4[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_titleLabel];
  v88 = [v240 leadingAnchor];
  v89 = &selRef__systemImageNamed_withConfiguration_;
  v90 = [v50 trailingAnchor];
  v91 = [v88 constraintEqualToAnchor_];

  *(v49 + 128) = v91;
LABEL_19:
  *&v4[v237] = v49;

  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2424244E0;
  v93 = *&v4[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_accessoryView];
  v94 = [v93 centerYAnchor];
  v95 = [v4 contentView];
  v96 = [v95 centerYAnchor];

  v97 = [v94 v55[17]];
  *(inited + 32) = v97;
  v98 = [v93 v89[119]];
  v99 = [v4 contentView];
  v100 = [v99 v89[119]];

  v101 = [v98 constraintEqualToAnchor:v100 constant:-12.0];
  *(inited + 40) = v101;
  v102 = [v240 v89[119]];
  v103 = [v4 contentView];
  v104 = [v103 v89[119]];

  v105 = [v102 constraintEqualToAnchor:v104 constant:-12.0];
  *(inited + 48) = v105;
  swift_beginAccess();
  specialized Array.append<A>(contentsOf:)(inited);
  swift_endAccess();
  [v93 setHidden_];
  v106 = v234;
  v107 = *(v234 + 104);
  v108 = v239;
  v109 = v235;
  v110 = v107(v235, v234);
  if (v110)
  {
    v111 = v110;
    v112 = [v110 userVisibleLabel];
    if (v112)
    {
      v113 = v112;
      v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v116 = v115;

      rawValue = v114;
      v242 = v116;
      v117 = v221;
      static CharacterSet.whitespaces.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v118 = StringProtocol.trimmingCharacters(in:)();
      v120 = v119;

      (*(v222 + 8))(v117, v223);

      v121 = HIBYTE(v120) & 0xF;
      if ((v120 & 0x2000000000000000) == 0)
      {
        v121 = v118 & 0xFFFFFFFFFFFFLL;
      }

      if (v121)
      {
        v109 = v235;
        goto LABEL_29;
      }

      v109 = v235;
    }

    else
    {
    }
  }

  v118 = (*(v106 + 16))(v109, v106);
  v120 = v126;
LABEL_29:
  if (CAFListContentRepresentable.isLimitedUI.getter(v109, v106))
  {
    v127 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v128 = MEMORY[0x245D0D180](v118, v120);

    v129 = [v127 initWithString_];

    v130 = CAFUIProminentSettingCell.primaryTextColor.getter();
    v131 = [objc_opt_self() configurationWithHierarchicalColor_];

    v132 = MEMORY[0x245D0D180](0x676E697265657473, 0xED00006C65656877);
    v133 = CAFUIImageForSymbolNameWithConfiguration(v132, v131);

    if (v133)
    {
      v134 = [objc_opt_self() textAttachmentWithImage_];
      v135 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v136 = MEMORY[0x245D0D180](8224, 0xE200000000000000);
      v137 = [v135 initWithString_];

      [v129 appendAttributedString_];
      v108 = v239;
      v138 = [objc_opt_self() attributedStringWithAttachment_];
      [v129 appendAttributedString_];
    }

    v139 = v240;
    [v240 setLineBreakMode_];
    [v139 setAttributedText_];

    v106 = v234;
    v109 = v235;
  }

  else
  {
    v140 = v240;
    [v240 setLineBreakMode_];
    v131 = MEMORY[0x245D0D180](v118, v120);

    [v140 setText_];
  }

  v141 = v107(v109, v106);
  v142 = v238;
  v143 = v240;
  if (v141)
  {
    v144 = v141;
    v145 = [v141 userVisibleValue];
    if (v145)
    {
      v146 = v145;
      v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v149 = v148;

      rawValue = v147;
      v242 = v149;
      v150 = v221;
      static CharacterSet.whitespaces.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v151 = StringProtocol.trimmingCharacters(in:)();
      v153 = v152;
      (*(v222 + 8))(v150, v223);

      v154 = HIBYTE(v153) & 0xF;
      if ((v153 & 0x2000000000000000) == 0)
      {
        v154 = v151 & 0xFFFFFFFFFFFFLL;
      }

      if (v154)
      {
        v155 = *&v142[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_subtitleLabel];
        v156 = MEMORY[0x245D0D180](v151, v153);

        [v155 setText_];

        goto LABEL_53;
      }
    }

    else
    {
    }
  }

  swift_getObjectType();
  v157 = swift_conformsToProtocol2();
  v155 = *&v142[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_subtitleLabel];
  if (!v157 || !v108)
  {
    [*&v142[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_subtitleLabel] setText_];
    [v143 setNumberOfLines_];
    [v155 setHidden_];
    v170 = swift_initStackObject();
    *(v170 + 16) = xmmword_242423B80;
    v171 = [v143 topAnchor];
    v172 = [v142 contentView];
    v173 = [v172 topAnchor];

    v174 = [v171 constraintEqualToAnchor_];
    *(v170 + 32) = v174;
    v175 = [v143 bottomAnchor];
    v176 = [v142 contentView];
    v177 = [v176 bottomAnchor];

    v178 = [v175 constraintEqualToAnchor_];
    *(v170 + 40) = v178;
    swift_beginAccess();
    specialized Array.append<A>(contentsOf:)(v170);
    swift_endAccess();
    goto LABEL_54;
  }

  v158 = v157;
  v159 = swift_getObjectType();
  v160 = *(v158 + 16);
  swift_unknownObjectRetain();
  v161 = v160(v159, v158);
  v162 = *(v161 + 16);
  if (v162)
  {
    v234 = v159;
    v235 = v155;
    rawValue = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v162, 0);
    v163._rawValue = rawValue;
    v164 = (v161 + 40);
    do
    {
      v165 = *(v164 - 1);
      v166 = *v164;
      rawValue = v163._rawValue;
      v168 = *(v163._rawValue + 2);
      v167 = *(v163._rawValue + 3);

      if (v168 >= v167 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v167 > 1), v168 + 1, 1);
        v163._rawValue = rawValue;
      }

      *(v163._rawValue + 2) = v168 + 1;
      v169 = v163._rawValue + 16 * v168;
      *(v169 + 4) = v165;
      *(v169 + 5) = v166;
      v164 += 5;
      --v162;
    }

    while (v162);

    v143 = v240;
    v155 = v235;
    v159 = v234;
  }

  else
  {

    v163._rawValue = MEMORY[0x277D84F90];
  }

  v179._rawValue = (*(v158 + 24))(v159, v158);
  v180 = CAFUILocalizedValues(for:selectedValues:)(v163, v179);

  v181 = MEMORY[0x245D0D180](v180._countAndFlagsBits, v180._object);

  [v155 setText_];

  swift_unknownObjectRelease();
  v142 = v238;
LABEL_53:
  [v143 setNumberOfLines_];
  [v155 setHidden_];
  v182 = swift_initStackObject();
  *(v182 + 16) = xmmword_242423BE0;
  v183 = [v143 topAnchor];
  v184 = [v142 contentView];
  v185 = [v184 &selRef_tableView_didHighlightRowAtIndexPath_];

  v186 = [v183 constraintEqualToAnchor_];
  *(v182 + 32) = v186;
  v187 = [v143 bottomAnchor];
  v188 = [v142 contentView];
  v189 = [v188 centerYAnchor];

  v190 = [v187 constraintEqualToAnchor:v189 constant:7.0];
  *(v182 + 40) = v190;
  v191 = [v155 topAnchor];
  v192 = [v142 contentView];
  v193 = [v192 centerYAnchor];

  v194 = [v191 constraintEqualToAnchor:v193 constant:-7.0];
  *(v182 + 48) = v194;
  v195 = [v155 leadingAnchor];
  v196 = [v143 leadingAnchor];
  v197 = [v195 constraintEqualToAnchor_];

  *(v182 + 56) = v197;
  v198 = [v155 trailingAnchor];
  v199 = [v143 trailingAnchor];
  v200 = [v198 constraintEqualToAnchor_];

  *(v182 + 64) = v200;
  v201 = [v155 bottomAnchor];
  v202 = [v142 contentView];
  v203 = [v202 bottomAnchor];

  v204 = [v201 constraintEqualToAnchor_];
  *(v182 + 72) = v204;
  swift_beginAccess();
  specialized Array.append<A>(contentsOf:)(v182);
  swift_endAccess();
LABEL_54:
  v205 = v228;

  v206 = Array._bridgeToObjectiveC()().super.isa;

  [v226 activateConstraints_];

  v207 = [v142 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  objc_opt_self();
  v208 = swift_dynamicCastObjCClass();
  v209 = v232;
  if (!v208)
  {
    [v232 setUserInteractionEnabled_];
    CAFUIProminentSettingCell.configureButtonColorsForNonBoolean()();
    CAFUIProminentSettingCell.configurePlatterColorsForNonBoolean(using:)(v205);
LABEL_73:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return (*(v229 + 8))(v205, v230);
  }

  if (v142[v233])
  {
    v210 = 0;
  }

  else if (*v231)
  {
    v211 = v231[1];
    v212 = swift_getObjectType();
    v213 = *(v211 + 40);
    swift_unknownObjectRetain();
    v214 = v213(v212, v211);
    v209 = v232;
    v210 = v214;
    swift_unknownObjectRelease();
  }

  else
  {
    v210 = 1;
  }

  [v209 setUserInteractionEnabled_];
  if (CAFUIProminentSettingCell.effectiveRepresentable.getter())
  {
    objc_opt_self();
    v215 = swift_dynamicCastObjCClass();
    if (v215)
    {
      v216 = v215;
      v217 = CAFUIProminentSettingCell.effectiveRepresentable.getter();
      v218 = *v231;
      if (v217)
      {
        if (v218)
        {
          v219 = v217;
          swift_unknownObjectRelease();
          if (v219 != v218)
          {
            goto LABEL_71;
          }

LABEL_69:
          CAFUIProminentSettingCell.configButtonColorForBooleanSetting(_:)(v216);
LABEL_72:
          swift_unknownObjectRelease();
          CAFUIProminentSettingCell.configurePlatterColorsForBoolean(using:)(v205);
          goto LABEL_73;
        }

        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
      }

      else if (!v218)
      {
        swift_unknownObjectRetain();
        goto LABEL_69;
      }

LABEL_71:
      CAFUIProminentSettingCell.configButtonColorFor1stChildBooleanSetting(_:)(v216);
      goto LABEL_72;
    }

    goto LABEL_74;
  }

LABEL_75:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall CAFUIProminentSettingCell.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v8.receiver = v2;
  v8.super_class = type metadata accessor for CAFUIProminentSettingCell();
  objc_msgSendSuper2(&v8, sel_didUpdateFocusInContext_withAnimationCoordinator_, in.super.isa, with.super.isa);
  v5 = [(objc_class *)in.super.isa nextFocusedView];
  if (v5)
  {
    v6 = v5;

    v7 = v6 == v2;
  }

  else
  {
    v7 = 0;
  }

  [v2 setHighlighted_];
}

uint64_t CAFUIProminentSettingCell.updateConfiguration(using:)(void *a1)
{
  if (CAFUIProminentSettingCell.effectiveRepresentable.getter())
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      CAFUIProminentSettingCell.configureButtonColorsForNonBoolean()();
      CAFUIProminentSettingCell.configurePlatterColorsForNonBoolean(using:)(a1);
LABEL_19:

      return swift_unknownObjectRelease();
    }

    if (CAFUIProminentSettingCell.effectiveRepresentable.getter())
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        v4 = v3;
        v5 = CAFUIProminentSettingCell.effectiveRepresentable.getter();
        v6 = *(v1 + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable);
        if (v5)
        {
          if (v6)
          {
            v7 = v5;
            swift_unknownObjectRelease();
            if (v7 != v6)
            {
              goto LABEL_17;
            }

LABEL_15:
            CAFUIProminentSettingCell.configButtonColorForBooleanSetting(_:)(v4);
LABEL_18:
            swift_unknownObjectRelease();
            CAFUIProminentSettingCell.configurePlatterColorsForBoolean(using:)(a1);
            goto LABEL_19;
          }

          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
        }

        else if (!v6)
        {
          swift_unknownObjectRetain();
          goto LABEL_15;
        }

LABEL_17:
        CAFUIProminentSettingCell.configButtonColorFor1stChildBooleanSetting(_:)(v4);
        goto LABEL_18;
      }

      swift_unknownObjectRelease();
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  return specialized static CAFUILogger.info(_:function:file:line:)(0xD000000000000019, 0x800000024242DA30, 0xD00000000000001BLL, 0x800000024242DA50, 513);
}

void CAFUIProminentSettingCell.buttonClicked()()
{
  v1 = (v0 + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable);
  if (!*(v0 + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable))
  {
    return;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_9;
  }

  swift_unknownObjectRetain();
  v2 = CAFStaticSetting.firstChild.getter();
  if (!v2)
  {
    swift_unknownObjectRelease();
LABEL_9:
    if (!*v1)
    {
      return;
    }

LABEL_10:
    v7 = v1[1];
    swift_unknownObjectRetain();
    goto LABEL_16;
  }

  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_12:

    if (!*v1)
    {
      return;
    }

    goto LABEL_10;
  }

  v5 = v4;
  v3 = v3;
  if ([v5 hasHidden])
  {
    v6 = [v5 hidden];

    swift_unknownObjectRelease();
    if ((v6 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  swift_unknownObjectRelease();
LABEL_15:
  v7 = &protocol witness table for CAFBooleanSetting;
LABEL_16:
  ObjectType = swift_getObjectType();
  if ((v7[5])(ObjectType, v7))
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      swift_unknownObjectRetain();
      [v10 setOn_];
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRelease();
}

void CAFUIProminentSettingCell.configurePlatterColorsForBoolean(using:)(char *a1)
{
  v2 = v1;
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v52 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v52 - v10;
  v12 = type metadata accessor for UIBackgroundConfiguration();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  if (!CAFUIProminentSettingCell.effectiveRepresentable.getter())
  {
    goto LABEL_23;
  }

  objc_opt_self();
  v59 = swift_dynamicCastObjCClass();
  if (!v59)
  {
    swift_unknownObjectRelease();
LABEL_23:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  MEMORY[0x245D0D540]();
  v55 = *(v13 + 48);
  v56 = v13 + 48;
  v19 = v55(v11, 1, v12);
  v57 = v13;
  v58 = v12;
  if (v19 == 1)
  {
    outlined destroy of RequestTemporaryContentModel?(v11, &_s5UIKit25UIBackgroundConfigurationVSgMd);
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    v20 = type metadata accessor for UICellConfigurationState();
    v61[3] = v20;
    v61[4] = MEMORY[0x277D74BA8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
    (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v60, v20);
    UIBackgroundConfiguration.updated(for:)();
    __swift_destroy_boxed_opaque_existential_0(v61);
    CAFUIProminentSettingCell.cellBackgroundColor.getter();
    UIBackgroundConfiguration.backgroundColor.setter();
    (*(v13 + 16))(v9, v16, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    MEMORY[0x245D0D550](v9);
    v22 = *(v13 + 8);
    v22(v16, v12);
    v22(v18, v12);
  }

  v23 = [v2 contentView];
  v24 = [v23 traitCollection];

  v25 = *&v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_titleLabel];
  [v25 setOverrideUserInterfaceStyle_];
  v26 = *&v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_subtitleLabel];
  [v26 setOverrideUserInterfaceStyle_];
  v27 = CAFUIProminentSettingCell.primaryTextColor.getter();
  [v25 setTextColor_];

  v28 = CAFUIProminentSettingCell.secondaryTextColor.getter();
  v54 = v26;
  [v26 setTextColor_];

  v29 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor;
  if ((v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor] & 1) == 0)
  {
    if (!*&v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable] || (v30 = *&v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable + 8], ObjectType = swift_getObjectType(), v52 = v24, v53 = v25, v32 = v9, v33 = ObjectType, v34 = v6, v35 = *(v30 + 40), swift_unknownObjectRetain(), v36 = v33, v9 = v32, v25 = v53, v37 = v35(v36, v30), v6 = v34, v24 = v52, v38 = v37, swift_unknownObjectRelease(), (v38 & 1) != 0))
    {
      if (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter())
      {
        goto LABEL_19;
      }
    }
  }

  if ([v59 on])
  {
    if ((v2[v29] & 1) == 0)
    {
      if (!*&v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable] || (v39 = *&v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable + 8], v40 = swift_getObjectType(), v53 = v25, v41 = v9, v42 = v40, v60 = v6, v43 = *(v39 + 40), swift_unknownObjectRetain(), v44 = v42, v9 = v41, v25 = v53, v45 = v43(v44, v39), v6 = v60, LOBYTE(v39) = v45, swift_unknownObjectRelease(), (v39 & 1) != 0))
      {
        [v25 setOverrideUserInterfaceStyle_];
        [v54 setOverrideUserInterfaceStyle_];
LABEL_19:
        swift_unknownObjectRelease();

        return;
      }
    }
  }

  v46 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_customPlatterView;
  swift_beginAccess();
  v47 = *&v2[v46];
  if (!v47)
  {
    goto LABEL_19;
  }

  v48 = v47;
  static UIBackgroundConfiguration.clear()();
  v49 = v58;
  (*(v57 + 56))(v9, 0, 1, v58);
  v50 = MEMORY[0x245D0D550](v9);
  MEMORY[0x245D0D540](v50);
  if (v55(v6, 1, v49))
  {
    outlined init with copy of NotificationModel.Symbol?(v6, v9, &_s5UIKit25UIBackgroundConfigurationVSgMd);
    MEMORY[0x245D0D550](v9);
    swift_unknownObjectRelease();

    outlined destroy of RequestTemporaryContentModel?(v6, &_s5UIKit25UIBackgroundConfigurationVSgMd);
  }

  else
  {
    v51 = v48;
    UIBackgroundConfiguration.customView.setter();
    MEMORY[0x245D0D550](v6);
    swift_unknownObjectRelease();
  }
}

void CAFUIProminentSettingCell.configureButtonColorsForNonBoolean()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - v5;
  if (v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor] & 1) == 0 && (!*&v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable] || (v7 = *&v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable + 8], v8 = swift_getObjectType(), v9 = *(v7 + 40), swift_unknownObjectRetain(), v10 = v9(v8, v7), swift_unknownObjectRelease(), (v10)) && (([v0 isSelected] & 1) != 0 || (objc_msgSend(v0, sel_isHighlighted) & 1) != 0 || objc_msgSend(*&v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonSymbolView], sel_isHighlighted)))
  {
    v11 = [v0 contentView];
    v12 = [v11 traitCollection];

    v13 = [v12 userInterfaceStyle];
    v14 = objc_opt_self();
    if (v13 == 2)
    {
      v15 = [v14 _carSystemFocusLabelColor];
    }

    else
    {
      v15 = [v14 _carSystemPrimaryColor];
    }
  }

  else
  {
    if (*&v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable])
    {
      v30 = v6;
      v16 = *&v0[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable + 8];
      ObjectType = swift_getObjectType();
      v18 = *(v16 + 104);
      swift_unknownObjectRetain();
      v1 = v0;
      v6 = v30;
      v19 = v18(ObjectType, v16);
      swift_unknownObjectRelease();
      if (v19)
      {
        if ([v19 color])
        {
          v20 = UIColorFromCAFImageColor([v19 color]);

          goto LABEL_17;
        }
      }
    }

    v15 = [objc_opt_self() systemCyanColor];
  }

  v20 = v15;
LABEL_17:
  v21 = *&v1[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonSymbolView];
  UIButton.configuration.getter();
  v22 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v22 - 8) + 48))(v6, 1, v22))
  {
    outlined init with copy of NotificationModel.Symbol?(v6, v31, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
    UIButton.configuration.setter();
    outlined destroy of RequestTemporaryContentModel?(v6, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  }

  else
  {
    v23 = v20;
    UIButton.Configuration.baseForegroundColor.setter();
    UIButton.configuration.setter();
  }

  v24 = *&v1[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_buttonCircleView];
  v25 = [objc_opt_self() clearColor];
  [v24 setBackgroundColor_];

  [v24 setOverrideUserInterfaceStyle_];
  v26 = [v21 layer];
  v27 = [v1 traitCollection];
  v28 = [v27 userInterfaceStyle];

  v29 = 0;
  if (v28 == 1)
  {
    v29 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  }

  [v26 setCompositingFilter_];
}

id CAFUIProminentSettingCell.configurePlatterColorsForNonBoolean(using:)(void *a1)
{
  v2 = v1;
  v115 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v113 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v103 - v6;
  v8 = type metadata accessor for UIBackgroundConfiguration();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v112 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v114 = &v103 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v103 - v14;
  v16 = [v1 contentView];
  v17 = [v16 traitCollection];

  v18 = *&v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_titleLabel];
  [v18 setOverrideUserInterfaceStyle_];
  v19 = *&v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_subtitleLabel];
  [v19 setOverrideUserInterfaceStyle_];
  v20 = CAFUIProminentSettingCell.primaryTextColor.getter();
  v110 = v18;
  [v18 setTextColor_];

  v21 = CAFUIProminentSettingCell.secondaryTextColor.getter();
  v109 = v19;
  [v19 setTextColor_];

  v22 = *&v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_accessoryView];
  MEMORY[0x245D0D540]([v22 setHidden_]);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    return outlined destroy of RequestTemporaryContentModel?(v7, &_s5UIKit25UIBackgroundConfigurationVSgMd);
  }

  v106 = v22;
  v107 = v17;
  v24 = v8;
  v25 = *(v9 + 32);
  v25(v15, v7, v8);
  v26 = type metadata accessor for UICellConfigurationState();
  v117 = v26;
  v118 = MEMORY[0x277D74BA8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
  (*(*(v26 - 8) + 16))(boxed_opaque_existential_1, v115, v26);
  v28 = v114;
  v111 = v15;
  UIBackgroundConfiguration.updated(for:)();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  v29 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_customPlatterView;
  swift_beginAccess();
  v30 = *&v2[v29];
  v108 = v9;
  if (v30)
  {
    v31 = v28;
    v32 = v30;
    v33 = v112;
    static UIBackgroundConfiguration.clear()();
    (*(v9 + 8))(v31, v8);
    v25(v31, v33, v8);
    v34 = v32;
    v28 = v31;
    v35 = v34;
    UIBackgroundConfiguration.customView.setter();
    v36 = v24;
    if (UICellConfigurationState.isFocused.getter())
    {
      v37 = UIBackgroundConfiguration.customView.getter();
      [v37 &selRef:1 initWithCollectionViewLayout:?];

      v38 = [objc_opt_self() _carSystemFocusColor];
      UIBackgroundConfiguration.backgroundColor.setter();
LABEL_21:
      v61 = 0;
      v39 = v111;
LABEL_25:

      v65 = v108;
      v66 = v113;
      (*(v108 + 16))(v113, v28, v36);
      (*(v65 + 56))(v66, 0, 1, v36);
      MEMORY[0x245D0D550](v66);

      v67 = *(v65 + 8);
      v67(v28, v36);
      v67(v39, v36);
      return outlined consume of (@escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ())?(v61);
    }

    v62 = [objc_opt_self() clearColor];
    UIBackgroundConfiguration.backgroundColor.setter();
    v63 = UIBackgroundConfiguration.customView.getter();
    v39 = v111;
    if (v63)
    {
      v64 = v63;
      [v63 &selRef:0 initWithCollectionViewLayout:?];
    }

LABEL_24:
    v61 = 0;
    goto LABEL_25;
  }

  v36 = v8;
  v35 = CAFUIProminentSettingCell.cellBackgroundColor.getter();
  UIBackgroundConfiguration.backgroundColor.setter();
  if ((UICellConfigurationState.isHighlighted.getter() & 1) == 0 && (UICellConfigurationState.isSelected.getter() & 1) == 0)
  {
    goto LABEL_21;
  }

  v39 = v111;
  if (v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor])
  {
    goto LABEL_24;
  }

  v40 = &v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable];
  v41 = v113;
  if (!*&v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable])
  {
    goto LABEL_26;
  }

  v115 = v2;
  v42 = v40[1];
  ObjectType = swift_getObjectType();
  v44 = *(v42 + 5);
  swift_unknownObjectRetain();
  LOBYTE(v42) = v44(ObjectType, v42);
  swift_unknownObjectRelease();
  if ((v42 & 1) == 0)
  {
    v61 = 0;
    v39 = v111;
LABEL_29:
    v28 = v114;
    goto LABEL_25;
  }

  v45 = *v40;
  v39 = v111;
  v28 = v114;
  if (!*v40)
  {
LABEL_26:

    v68 = v108;
    (*(v108 + 16))(v41, v28, v36);
    (*(v68 + 56))(v41, 0, 1, v36);
    MEMORY[0x245D0D550](v41);

    v69 = *(v68 + 8);
    v69(v28, v36);
    return (v69)(v39, v36);
  }

  v46 = v40[1];
  v47 = swift_getObjectType();
  v48 = *(v46 + 14);
  swift_unknownObjectRetain();
  v112 = v45;
  v48(aBlock, v47, v46);
  if (!LOBYTE(aBlock[0]))
  {

    swift_unknownObjectRelease();
    v70 = v108;
    v71 = v114;
    (*(v108 + 16))(v41, v114, v36);
    (*(v70 + 56))(v41, 0, 1, v36);
    v72 = v41;
LABEL_43:
    MEMORY[0x245D0D550](v72);

    v69 = *(v70 + 8);
    v69(v71, v36);
    return (v69)(v39, v36);
  }

  if (LOBYTE(aBlock[0]) == 1)
  {
    v49 = 0x2E6E6F7276656863;
  }

  else
  {
    v49 = 0xD000000000000019;
  }

  if (LOBYTE(aBlock[0]) == 1)
  {
    v50 = 0xEF64726177726F66;
  }

  else
  {
    v50 = 0x800000024242AD00;
  }

  v51 = CAFUIProminentSettingCell.primaryTextColor.getter();
  [v106 setTintColor_];

  v52 = *MEMORY[0x277D76920];
  v53 = objc_opt_self();
  v54 = [v53 configurationWithTextStyle:v52 scale:2];
  v55 = [v53 configurationWithWeight_];
  v105 = v54;
  v56 = [v54 configurationByApplyingConfiguration_];

  v57 = v56;
  v58 = MEMORY[0x245D0D180](v49, v50);
  v59 = [objc_opt_self() systemImageNamed:v58 withConfiguration:v57];

  if (v59)
  {
    v60 = [v59 imageWithRenderingMode_];
  }

  else
  {
    v60 = 0;
  }

  v73 = v106;
  [v106 setImage_];

  [v73 setHidden_];
  v74 = v110;
  [v110 bounds];
  Width = CGRectGetWidth(v121);
  if (Width <= 0.0)
  {

    swift_unknownObjectRelease();

    v81 = v108;
    v82 = v114;
    (*(v108 + 16))(v41, v114, v36);
    (*(v81 + 56))(v41, 0, 1, v36);
    MEMORY[0x245D0D550](v41);

    v69 = *(v81 + 8);
    v69(v82, v36);
    return (v69)(v39, v36);
  }

  v76 = Width;
  v77 = [v73 image];
  if (v77)
  {
    v78 = v77;
    [v77 size];
    v80 = v79;

    v74 = v110;
  }

  else
  {
    v80 = 0.0;
  }

  v106 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_2424244E0;
  result = [v74 textColor];
  if (!result)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v84 = v74;
  v85 = result;
  v86 = [result CGColor];

  *(v83 + 32) = v86;
  result = [v84 textColor];
  if (result)
  {
    v87 = result;

    v88 = [v87 CGColor];

    *(v83 + 40) = v88;
    *(v83 + 48) = [v35 CGColor];
    type metadata accessor for CGColorRef(0);
    v89.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v120[0] = 0.0;
    v120[1] = (v76 - v80 + -12.0 + -12.0) / v76;
    v120[2] = (v76 - v80) / v76;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v91 = CGGradientCreateWithColors(DeviceRGB, v89.super.isa, v120);

    if (v91)
    {
      [v115 bounds];
      v94 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
      v95 = swift_allocObject();
      *(v95 + 16) = v91;
      *(v95 + 24) = v76;
      v96 = swift_allocObject();
      *(v96 + 16) = partial apply for closure #1 in CAFUIProminentSettingCell.configurePlatterColorsForNonBoolean(using:);
      *(v96 + 24) = v95;
      v118 = _sSo30UIGraphicsImageRendererContextCIgg_ABIegg_TRTA_0;
      v119 = v96;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
      v117 = &block_descriptor_36_1;
      v97 = _Block_copy(aBlock);
      v103 = v91;

      v104 = v94;
      v98 = [v94 imageWithActions_];
      _Block_release(v97);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        v100 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithPatternImage_];
        [v110 setTextColor_];

        v101 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithPatternImage_];
        [v109 setTextColor_];
        swift_unknownObjectRelease();

        v61 = partial apply for closure #1 in CAFUIProminentSettingCell.configurePlatterColorsForNonBoolean(using:);
        goto LABEL_29;
      }

      __break(1u);
      goto LABEL_45;
    }

    swift_unknownObjectRelease();
    v70 = v108;
    v102 = v113;
    v71 = v114;
    (*(v108 + 16))(v113, v114, v36);
    (*(v70 + 56))(v102, 0, 1, v36);
    v72 = v102;
    goto LABEL_43;
  }

LABEL_46:
  __break(1u);
  return result;
}

void closure #1 in CAFUIProminentSettingCell.configurePlatterColorsForNonBoolean(using:)(void *a1, CGGradient *a2, CGFloat a3)
{
  v5 = [a1 CGContext];
  v7.x = 0.0;
  v7.y = 0.0;
  v8.y = 0.0;
  v8.x = a3;
  CGContextDrawLinearGradient(v5, a2, v7, v8, 0);
}

id CAFUIProminentSettingCell.setupDefaultBackground()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for UIBackgroundConfiguration();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v0 + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable);
  if (*(v0 + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable))
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      swift_unknownObjectRetain();
      if ([v11 on] && (*(v1 + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor) & 1) == 0)
      {
        if (!*v9)
        {

          return swift_unknownObjectRelease();
        }

        v17 = v9[1];
        ObjectType = swift_getObjectType();
        v19 = *(v17 + 40);
        swift_unknownObjectRetain();
        LOBYTE(v17) = v19(ObjectType, v17);
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        if (v17)
        {
          return result;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  static UIBackgroundConfiguration.listCell()();
  UIBackgroundConfiguration.cornerRadius.setter();
  v12 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_customPlatterView;
  swift_beginAccess();
  v13 = *(v1 + v12);
  if (v13)
  {
    v14 = v13;
    UIBackgroundConfiguration.customView.setter();
  }

  else
  {
    v15 = [objc_opt_self() effectWithStyle_];
    UIBackgroundConfiguration.visualEffect.setter();
    result = [objc_opt_self() tableCellPlainBackgroundColor];
    if (!result)
    {
      __break(1u);
      return result;
    }

    UIBackgroundConfiguration.backgroundColor.setter();
  }

  (*(v6 + 16))(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  MEMORY[0x245D0D550](v4);
  return (*(v6 + 8))(v8, v5);
}

id CAFUIProminentSettingCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUIProminentSettingCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2424176A4()
{
  MEMORY[0x245D0E610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_242417704@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_customPlatterView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2424179F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void static CAFUIAppLayoutConfiguration.appStyle(size:)(BOOL *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  if (a2 == 0.0 && a3 == 0.0)
  {
    *a1 = 0;
  }

  else
  {
    v3 = a2 / a3;
    if (v3 <= 3.0)
    {
      *a1 = v3 < 0.65;
    }

    else
    {
      *a1 = -126;
    }
  }
}

unint64_t lazy protocol witness table accessor for type CAFUIAppPresentationMode and conformance CAFUIAppPresentationMode()
{
  result = lazy protocol witness table cache variable for type CAFUIAppPresentationMode and conformance CAFUIAppPresentationMode;
  if (!lazy protocol witness table cache variable for type CAFUIAppPresentationMode and conformance CAFUIAppPresentationMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFUIAppPresentationMode and conformance CAFUIAppPresentationMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFUIAppSubStyle and conformance CAFUIAppSubStyle()
{
  result = lazy protocol witness table cache variable for type CAFUIAppSubStyle and conformance CAFUIAppSubStyle;
  if (!lazy protocol witness table cache variable for type CAFUIAppSubStyle and conformance CAFUIAppSubStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFUIAppSubStyle and conformance CAFUIAppSubStyle);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CAFUIAppAppStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3F)
  {
    goto LABEL_17;
  }

  if (a2 + 193 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 193) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 193;
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

      return (*a1 | (v4 << 8)) - 193;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 193;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v6 >= 0x3E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for CAFUIAppAppStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 193 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 193) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3F)
  {
    v4 = 0;
  }

  if (a2 > 0x3E)
  {
    v5 = ((a2 - 63) >> 8) + 1;
    *result = a2 - 63;
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
    *result = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t one-time initialization function for default()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.default = result;
  return result;
}

uint64_t static CAFUILogger.fault(_:function:file:line:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = static os_log_type_t.fault.getter();
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v13 = static OS_os_log.default;
  result = os_log_type_enabled(static OS_os_log.default, v12);
  if (result)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = v16;
    *v15 = 136315650;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v17);
    *(v15 + 12) = 2048;
    *(v15 + 14) = a7;
    *(v15 + 22) = 2080;
    *(v15 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v17);
    _os_log_impl(&dword_24234D000, v13, v12, "%s: %ld  %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245D0E5A0](v16, -1, -1);
    return MEMORY[0x245D0E5A0](v15, -1, -1);
  }

  return result;
}

uint64_t specialized static CAFUILogger.debug(_:function:file:line:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v11 = a6();
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v12 = static OS_os_log.default;
  result = os_log_type_enabled(static OS_os_log.default, v11);
  if (result)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = v15;
    *v14 = 136315650;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v16);
    *(v14 + 12) = 2048;
    *(v14 + 14) = a5;
    *(v14 + 22) = 2080;
    *(v14 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v16);
    _os_log_impl(&dword_24234D000, v12, v11, "%s: %ld  %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245D0E5A0](v15, -1, -1);
    return MEMORY[0x245D0E5A0](v14, -1, -1);
  }

  return result;
}

id CAFVolume.rangeValues.getter()
{
  v1 = [v0 volumeRange];

  return v1;
}

id (*CAFVolume.value.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 volume];
  return CAFVolume.value.modify;
}

void CAFVolume.ancillaryButton.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  if (![v1 hasMute])
  {
    return;
  }

  v46 = v3;
  v47 = v2;
  v15 = 0xEC0000006C6C6966;
  v16 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x277D76920] scale:2];
  v17 = [v1 mute];
  v18 = v17 == 0;
  if (v17)
  {
    v19 = 0xD000000000000012;
  }

  else
  {
    v19 = 0x2E72656B61657073;
  }

  if (!v18)
  {
    v15 = 0x800000024242DBC0;
  }

  v20 = MEMORY[0x245D0D180](v19, v15);

  v21 = v16;
  v22 = CAFUIImageForSymbolNameWithConfiguration(v20, v21);

  if (!v22)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v23 = v22;
  swift_beginAccess();
  v24 = objc_getAssociatedObject(v1, &static CAFUIListContentAssociatedObjects.MuteButton);
  swift_endAccess();
  if (v24)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
  }

  aBlock = v53;
  v50 = v54;
  if (!*(&v54 + 1))
  {

    outlined destroy of RequestTemporaryContentModel?(&aBlock, &_sypSgMd);
LABEL_24:
    static UIButton.Configuration.filled()();
    v34 = [v23 imageWithRenderingMode_];
    UIButton.Configuration.image.setter();
    type metadata accessor for UIButton();
    v36 = v46;
    v35 = v47;
    (*(v46 + 16))(v6, v8, v47);
    v37 = UIButton.init(configuration:primaryAction:)();
    [v37 setEnabled_];
    v38 = v37;
    v39 = MEMORY[0x245D0D180](0x74754D4955464143, 0xEF6E6F7474754265);
    [v38 setAccessibilityIdentifier_];

    [v38 setTranslatesAutoresizingMaskIntoConstraints_];
    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = partial apply for closure #1 in CAFVolume.ancillaryButton.getter;
    v52 = v40;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v50 = thunk for @escaping @callee_guaranteed (@guaranteed UIButton) -> ();
    *(&v50 + 1) = &block_descriptor_10;
    v41 = _Block_copy(&aBlock);

    [v38 setConfigurationUpdateHandler_];
    _Block_release(v41);
    [v38 addTarget:v1 action:sel_muteTouchUpWithSender_ forControlEvents:64];
    swift_beginAccess();
    v42 = v38;
    objc_setAssociatedObject(v1, &static CAFUIListContentAssociatedObjects.MuteButton, v42, 0x301);
    swift_endAccess();

    (*(v36 + 8))(v8, v35);
    return;
  }

  type metadata accessor for UIButton();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_24;
  }

  v45 = v23;
  v25 = v48;
  v26 = [v1 mute];
  v27 = v26 == 0;
  if (v26)
  {
    v28 = 0xD000000000000012;
  }

  else
  {
    v28 = 0x2E72656B61657073;
  }

  if (v27)
  {
    v29 = 0xEC0000006C6C6966;
  }

  else
  {
    v29 = 0x800000024242DBC0;
  }

  v30 = MEMORY[0x245D0D180](v28, v29);

  v31 = CAFUIImageForSymbolNameWithConfiguration(v30, v21);

  if (!v31)
  {
    goto LABEL_29;
  }

  UIButton.configuration.getter();
  v32 = (*(v46 + 48))(v14, 1, v47);
  v33 = v45;
  if (v32)
  {
    outlined init with copy of UIButton.Configuration?(v14, v12);
    UIButton.configuration.setter();
    outlined destroy of RequestTemporaryContentModel?(v14, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  }

  else
  {
    v43 = [v31 imageWithRenderingMode_];
    UIButton.Configuration.image.setter();
    UIButton.configuration.setter();
  }

  v44 = v25;
  [v44 setEnabled_];
}

unint64_t type metadata accessor for UIButton()
{
  result = lazy cache variable for type metadata for UIButton;
  if (!lazy cache variable for type metadata for UIButton)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIButton);
  }

  return result;
}

uint64_t sub_242418ACC()
{
  MEMORY[0x245D0E610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t closure #1 in CAFVolume.ancillaryButton.getter(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = type metadata accessor for UIButton.Configuration();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    UIButton.configuration.getter();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      return outlined destroy of RequestTemporaryContentModel?(v7, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
    }

    (*(v9 + 32))(v11, v7, v8);
    if ([a1 isEnabled])
    {
      v14 = [v13 mute];
      v15 = [a1 isSelected];
      if (v14)
      {
        if ((v15 & 1) == 0 && ([a1 isHighlighted] & 1) == 0)
        {
          v16 = &selRef_systemWhiteColor;
          v17 = &selRef_systemBlackColor;
          goto LABEL_14;
        }
      }

      else if ((v15 & 1) == 0 && ([a1 isHighlighted] & 1) == 0)
      {
        v16 = &selRef_secondarySystemFillColor;
        v17 = &selRef__carSystemPrimaryColor;
LABEL_14:
        if ([a1 isFocused])
        {
          v17 = &selRef__carSystemFocusLabelColor;
          v18 = &selRef__carSystemFocusColor;
        }

        else
        {
          v18 = v16;
        }

        goto LABEL_17;
      }

      v18 = &selRef__carSystemFocusColor;
      v17 = &selRef__carSystemFocusLabelColor;
    }

    else
    {
      v18 = &selRef_secondarySystemFillColor;
      v17 = &selRef_secondaryLabelColor;
    }

LABEL_17:
    v19 = objc_opt_self();
    v20 = [v19 *v17];
    UIButton.Configuration.baseForegroundColor.setter();
    v21 = [v19 *v18];
    UIButton.Configuration.baseBackgroundColor.setter();
    (*(v9 + 16))(v5, v11, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    UIButton.configuration.setter();

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type UInt8 and conformance UInt8()
{
  result = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
  }

  return result;
}

id protocol witness for CAFUINumericRepresentable.value.getter in conformance CAFVolume@<X0>(_BYTE *a1@<X8>)
{
  result = [v1 volume];
  *a1 = result;
  return result;
}

id (*protocol witness for CAFUINumericRepresentable.value.modify in conformance CAFVolume(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 volume];
  return CAFVolume.value.modify;
}

id protocol witness for CAFUINumericRepresentable.rangeValues.getter in conformance CAFVolume()
{
  v1 = [v0 volumeRange];

  return v1;
}

id sub_242419000@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 volume];
  *a2 = result;
  return result;
}

void @objc CAFVolume.muteTouchUp(sender:)(void *a1)
{
  v1 = a1;
  if ([v1 hasMute])
  {
    [v1 setMute_];
  }
}

uint64_t CAFUIServiceListItem.identifier.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(v0 + 128) uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = UUID.uuidString.getter();
  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t CAFUIServiceListItem.__deallocating_deinit()
{
  v0 = CAFUIDataListItem.deinit();

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

UIColor __swiftcall UIColor.init(hex:alpha:)(Swift::UInt hex, Swift::Double alpha)
{
  v3 = hex;
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initWithRed:BYTE2(v3) / 255.0 green:BYTE1(v3) / 255.0 blue:v3 / 255.0 alpha:alpha];
}

id static UIColor.cafui_HDOrangeColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.929411765 green:0.545098039 blue:0.0 alpha:1.0];
}

id static UIImage.cafui_hdRadioLogoOrange.getter()
{
  specialized static UIImage.cafui_hdRadioLogo.getter();
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.929411765 green:0.545098039 blue:0.0 alpha:1.0];
  v3 = [v1 imageWithTintColor_];

  return v3;
}

Swift::Int MulticastBadgeSize.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x245D0DB60](v1);
  return Hasher._finalize()();
}

uint64_t CAFUIMulticastLabel.forceDark.getter()
{
  v1 = OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_forceDark;
  swift_beginAccess();
  return *(v0 + v1);
}

void CAFUIMulticastLabel.forceDark.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_forceDark;
  swift_beginAccess();
  v1[v3] = a1;
  if ((a1 & 1) == 0)
  {
    v4 = [v1 traitCollection];
    [v4 userInterfaceStyle];
  }

  v5 = v1[OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_signalLocked];
  v6 = *&v1[OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_multicast];
  v7 = *&v1[OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_multicast + 8];
  v9 = v1[OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_badgeSize];
  v8 = specialized String.attributedMulticastString(dark:signalLocked:badgeSize:)(v5, &v9, v6, v7);
  [v1 setAttributedText_];
}

void (*CAFUIMulticastLabel.forceDark.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_forceDark;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return CAFUIMulticastLabel.forceDark.modify;
}

void CAFUIMulticastLabel.forceDark.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 24);
    if ((v4[*(v3 + 32)] & 1) == 0)
    {
      v5 = [*(v3 + 24) traitCollection];
      [v5 userInterfaceStyle];

      v4 = *(v3 + 24);
    }

    v6 = v4[OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_signalLocked];
    v7 = *&v4[OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_multicast];
    v8 = *&v4[OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_multicast + 8];
    v10 = v4[OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_badgeSize];
    v9 = specialized String.attributedMulticastString(dark:signalLocked:badgeSize:)(v6, &v10, v7, v8);
    [v4 setAttributedText_];
  }

  free(v3);
}

char *CAFUIMulticastLabel.init(multicast:signalLocked:badgeSize:)(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v10 = *a4;
  v4[OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_forceDark] = 0;
  v11 = &v4[OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_multicast];
  *v11 = a1;
  v11[1] = a2;
  v4[OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_signalLocked] = a3;
  v4[OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_badgeSize] = v10;
  v31.receiver = v4;
  v31.super_class = type metadata accessor for CAFUIMulticastLabel();
  v12 = objc_msgSendSuper2(&v31, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [objc_opt_self() secondaryLabelColor];
  [v12 setTextColor_];

  v14 = *MEMORY[0x277D76968];
  v15 = objc_opt_self();
  v16 = v12;
  v17 = [v15 _preferredFontForTextStyle_variant_];
  [v16 setFont_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2424235A0;
  v19 = type metadata accessor for UITraitUserInterfaceStyle();
  v20 = MEMORY[0x277D74BF0];
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = ObjectType;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v23 = OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_forceDark;
  swift_beginAccess();
  if ((v16[v23] & 1) == 0)
  {
    v24 = [v16 traitCollection];
    [v24 userInterfaceStyle];
  }

  v25 = *&v16[OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_multicast];
  v26 = *&v16[OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_multicast + 8];
  v27 = v16[OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_signalLocked];
  v30 = v16[OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_badgeSize];
  v28 = specialized String.attributedMulticastString(dark:signalLocked:badgeSize:)(v27, &v30, v25, v26);
  [v16 setAttributedText_];

  return v16;
}

void closure #1 in CAFUIMulticastLabel.init(multicast:signalLocked:badgeSize:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_forceDark;
    swift_beginAccess();
    if ((v1[v2] & 1) == 0)
    {
      v3 = [v1 traitCollection];
      [v3 userInterfaceStyle];
    }

    v4 = v1[OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_signalLocked];
    v5 = *&v1[OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_multicast];
    v6 = *&v1[OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_multicast + 8];
    v8 = v1[OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_badgeSize];
    v7 = specialized String.attributedMulticastString(dark:signalLocked:badgeSize:)(v4, &v8, v5, v6);
    [v1 setAttributedText_];
  }
}

id CAFUIMulticastLabel.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CAFUIMulticastLabel.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_forceDark) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id CAFUIMulticastLabel.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CAFUIMulticastLabel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUIMulticastLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized static UIImage.cafui_hdRadioLogo.getter()
{
  v0 = *MEMORY[0x277D76920];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithTextStyle:v0 scale:2];
  v3 = [v1 configurationWithWeight_];
  v4 = [v2 configurationByApplyingConfiguration_];

  v5 = MEMORY[0x245D0D180](0x2E6F696461726468, 0xEC0000006F676F6CLL);
  v6 = [objc_opt_self() _systemImageNamed_];

  if (v6)
  {
    v7 = [v6 imageWithRenderingMode_];

    [v7 imageWithSymbolConfiguration_];
  }

  else
  {
    __break(1u);
  }
}

id specialized String.attributedMulticastString(dark:signalLocked:badgeSize:)(char a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (a1)
  {
    v31 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.929411765 green:0.545098039 blue:0.0 alpha:1.0];
    specialized static UIImage.cafui_hdRadioLogo.getter();
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.929411765 green:0.545098039 blue:0.0 alpha:1.0];
    v10 = [v8 imageWithTintColor_];
  }

  else
  {
    v31 = [objc_opt_self() secondaryLabelColor];
    specialized static UIImage.cafui_hdRadioLogo.getter();
    v10 = v11;
  }

  v32 = v10;
  v12 = [objc_opt_self() textAttachmentWithImage_];
  [v12 setBounds_];
  v13 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v14 = [objc_opt_self() attributedStringWithAttachment_];
  [v13 appendAttributedString_];

  result = [objc_opt_self() systemFontOfSize:*MEMORY[0x277D743D0] weight:dbl_2424281D8[v6] design:*MEMORY[0x277D74410]];
  if (result)
  {
    v16 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2424235A0;
    v18 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    *(inited + 64) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIFont);
    *(inited + 40) = v16;
    v19 = v18;
    v30 = v16;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (NSAttributedStringKey, Any)(inited + 32);
    v20 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v21 = MEMORY[0x245D0D180](a3, a4);
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v23 = [v20 initWithString:v21 attributes:isa];

    [v13 appendAttributedString_];
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_2424235A0;
    v25 = *MEMORY[0x277D740C0];
    *(v24 + 32) = *MEMORY[0x277D740C0];
    *(v24 + 64) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIColor);
    *(v24 + 40) = v31;
    v26 = v25;
    v27 = v31;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v24);
    swift_setDeallocating();
    outlined destroy of (NSAttributedStringKey, Any)(v24 + 32);
    v28 = Dictionary._bridgeToObjectiveC()().super.isa;

    v29 = v13;
    [v29 addAttributes:v28 range:{0, objc_msgSend(v29, sel_length)}];

    return v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24241A2C4()
{
  MEMORY[0x245D0E610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24241A2FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t lazy protocol witness table accessor for type MulticastBadgeSize and conformance MulticastBadgeSize()
{
  result = lazy protocol witness table cache variable for type MulticastBadgeSize and conformance MulticastBadgeSize;
  if (!lazy protocol witness table cache variable for type MulticastBadgeSize and conformance MulticastBadgeSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MulticastBadgeSize and conformance MulticastBadgeSize);
  }

  return result;
}

uint64_t sub_24241A394@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5CAFUI19CAFUIMulticastLabel_forceDark;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t outlined destroy of (NSAttributedStringKey, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

id CAFListContentRepresentable.symbolImage.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 64))();
  v4 = v3;
  if (v3)
  {
    v5 = v2;
    v6 = *MEMORY[0x277D76920];
    v7 = objc_opt_self();
    v8 = [v7 configurationWithTextStyle:v6 scale:2];
    v9 = [v7 configurationWithWeight_];
    v10 = [v8 configurationByApplyingConfiguration_];

    v11 = MEMORY[0x245D0D180](v5, v4);

    v4 = CAFUIImageForSymbolNameWithConfiguration(v11, v10);
  }

  return v4;
}

void *CAFListContentRepresentable.isInfoButtonLimitedUI.getter()
{
  result = CAFListContentRepresentable.session.getter();
  if (result)
  {
    v1 = result;
    v2 = [result limitUserInterfaces];
    if (v2)
    {
      v3 = v2;
      if ([v2 BOOLValue])
      {
        v4 = [v1 configuration];
        v5 = [v4 limitableUserInterfaces];

        return ((v5 >> 8) & 1);
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void *CAFListContentRepresentable.isLimitedUI.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 48))())
  {
    result = CAFListContentRepresentable.session.getter();
    if (!result)
    {
      return result;
    }

    v3 = result;
    v4 = [result limitUserInterfaces];
    if (v4)
    {
      v5 = v4;
      if ([v4 BOOLValue])
      {
        v6 = [v3 configuration];
        v7 = [v6 limitableUserInterfaces];

        return ((v7 >> 5) & 1);
      }
    }

    else
    {
    }
  }

  return 0;
}

id CAFListContentRepresentable.isRHD.getter()
{
  v0 = CAFListContentRepresentable.session.getter();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 configuration];

  v3 = [v2 rightHandDrive];
  return v3;
}

void CAFListContentRepresentable.session.setter(void *a1)
{
  specialized CAFListContentRepresentable.session.setter(a1);
}

Swift::Int CAFListContentAccessoryType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x245D0DB60](v1);
  return Hasher._finalize()();
}

uint64_t CAFListContentRepresentable.session.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &static CAFUIListContentAssociatedObjects.CARSession);
  swift_endAccess();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    type metadata accessor for CARSession();
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of Any?(v6);
    return 0;
  }
}

void key path setter for CAFListContentRepresentable.session : <A>A(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  specialized CAFListContentRepresentable.session.setter(v1);
}

void (*CAFListContentRepresentable.session.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = CAFListContentRepresentable.session.getter();
  return CAFListContentRepresentable.session.modify;
}

void CAFListContentRepresentable.session.modify(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    specialized CAFListContentRepresentable.session.setter(v4);

    v3 = v2;
  }

  else
  {
    specialized CAFListContentRepresentable.session.setter(*a1);
    v3 = v4;
  }
}

uint64_t specialized CAFListContentRepresentable.session.setter(void *a1)
{
  swift_beginAccess();
  objc_setAssociatedObject(v1, &static CAFUIListContentAssociatedObjects.CARSession, a1, 0);
  return swift_endAccess();
}

unint64_t type metadata accessor for CARSession()
{
  result = lazy cache variable for type metadata for CARSession;
  if (!lazy cache variable for type metadata for CARSession)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CARSession);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFListContentAccessoryType and conformance CAFListContentAccessoryType()
{
  result = lazy protocol witness table cache variable for type CAFListContentAccessoryType and conformance CAFListContentAccessoryType;
  if (!lazy protocol witness table cache variable for type CAFListContentAccessoryType and conformance CAFListContentAccessoryType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFListContentAccessoryType and conformance CAFListContentAccessoryType);
  }

  return result;
}

uint64_t sub_24241AC84@<X0>(uint64_t *a1@<X8>)
{
  result = CAFListContentRepresentable.session.getter();
  *a1 = result;
  return result;
}

__n128 sub_24241ACC0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t get_enum_tag_for_layout_string_5CAFUI24CAFUICellSelectionActionO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CAFUICellSelectionAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CAFUICellSelectionAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t destructiveInjectEnumTag for CAFUICellSelectionAction(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

id UIStackView.init(axis:spacing:arrangedSubviews:)(uint64_t a1, double a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for UIView();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithArrangedSubviews_];

  v7 = v6;
  [v7 setSpacing_];
  [v7 setAxis_];
  [v7 setContentMode_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  return v7;
}

unint64_t type metadata accessor for UIView()
{
  result = lazy cache variable for type metadata for UIView;
  if (!lazy cache variable for type metadata for UIView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIView);
  }

  return result;
}

char *_s5CAFUI27CAFUIDevicePickerControllerPAAE013presentDeviceC9LimitedUI3for010navigationD0So6UIViewCAH_So012UINavigationD0CtFAA0bc4ViewD0C_Tt1g5Tm(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = objc_allocWithZone(type metadata accessor for CAFUIDevicePickerLimitedUIView());
  v13 = a2;
  v14 = CAFUIDevicePickerLimitedUIView.init(presentedAction:dismissAction:)(a5, v10, a6, v11);
  [a1 addSubview_];
  v15 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_242423B90;
  v17 = [v14 leadingAnchor];
  v18 = [a1 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v16 + 32) = v19;
  v20 = [v14 trailingAnchor];

  v21 = [a1 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v16 + 40) = v22;
  v23 = [v14 topAnchor];

  v24 = [a1 topAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v16 + 48) = v25;
  v26 = [v14 bottomAnchor];

  v27 = [a1 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v16 + 56) = v28;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 activateConstraints_];

  return v14;
}

CAFUI::CAFDeviceAction_optional __swiftcall CAFDeviceAction.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CAFDeviceAction.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t CAFDeviceAction.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7964616552;
  v3 = 0xD000000000000011;
  if (v1 != 2)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0x527463656E6E6F43;
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

unint64_t lazy protocol witness table accessor for type CAFDeviceAction and conformance CAFDeviceAction()
{
  result = lazy protocol witness table cache variable for type CAFDeviceAction and conformance CAFDeviceAction;
  if (!lazy protocol witness table cache variable for type CAFDeviceAction and conformance CAFDeviceAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFDeviceAction and conformance CAFDeviceAction);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CAFDeviceAction()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CAFDeviceAction()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CAFDeviceAction()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CAFDeviceAction(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7964616552;
  v4 = 0xD000000000000011;
  v5 = 0x8000000242428BB0;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000012;
    v5 = 0x8000000242428BD0;
  }

  if (*v1)
  {
    v3 = 0x527463656E6E6F43;
    v2 = 0xEE00747365757165;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t lazy protocol witness table accessor for type [CAFDeviceAction] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFDeviceAction] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFDeviceAction] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay5CAFUI15CAFDeviceActionOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFDeviceAction] and conformance [A]);
  }

  return result;
}

void closure #1 in CAFUIDevicePickerDetailViewController.init(device:pairedDevices:actions:carSession:delegate:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CAFUIDevicePickerDetailViewController.updateDevicePickerLimitedUI()();
  }
}

Swift::Void __swiftcall CAFUIDevicePickerDetailViewController.updateDevicePickerLimitedUI()()
{
  v1 = *&v0[OBJC_IVAR____TtC5CAFUI24CAFUITableViewController_tableView];
  v2 = OBJC_IVAR____TtC5CAFUI37CAFUIDevicePickerDetailViewController_carSession;
  v3 = *&v0[OBJC_IVAR____TtC5CAFUI37CAFUIDevicePickerDetailViewController_carSession];
  if (v3)
  {
    v4 = v3;
    v5 = [v4 limitUserInterfaces];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 BOOLValue];

      if (v7)
      {
        v8 = [v4 configuration];
        v9 = [v8 limitableUserInterfaces];

        v10 = (v9 & 0x40) == 0;
        goto LABEL_7;
      }
    }
  }

  v10 = 1;
LABEL_7:
  [v1 setAllowsFocus_];
  [v1 reloadData];
  v11 = *&v0[v2];
  if (v11)
  {
    v12 = v11;
    v13 = [v12 limitUserInterfaces];
    if (v13 && (v14 = v13, v15 = [v13 BOOLValue], v14, v15))
    {
      v16 = [v12 configuration];
      v17 = [v16 limitableUserInterfaces];

      if ((v17 & 0x40) != 0)
      {
        v18 = [v0 navigationController];
        if (v18)
        {
          v19 = v18;
          v20 = [v0 view];
          if (!v20)
          {
            __break(1u);
            return;
          }

          v21 = v20;
          v22 = _s5CAFUI27CAFUIDevicePickerControllerPAAE013presentDeviceC9LimitedUI3for010navigationD0So6UIViewCAH_So012UINavigationD0CtFAA0bc4ViewD0C_Tt1g5Tm(v20, v19, &unk_2854A6710, &unk_2854A6738, partial apply for closure #1 in CAFUIDevicePickerController.presentDevicePickerLimitedUI(for:navigationController:), partial apply for closure #2 in CAFUIDevicePickerController.presentDevicePickerLimitedUI(for:navigationController:));

          v23 = OBJC_IVAR____TtC5CAFUI37CAFUIDevicePickerDetailViewController_limitedUIView;
          v24 = *&v0[OBJC_IVAR____TtC5CAFUI37CAFUIDevicePickerDetailViewController_limitedUIView];
          if (v24)
          {
            v25 = v24;
            [v25 removeFromSuperview];
          }

          v26 = *&v0[v23];
          *&v0[v23] = v22;
          goto LABEL_22;
        }
      }
    }

    else
    {
    }
  }

  v27 = OBJC_IVAR____TtC5CAFUI37CAFUIDevicePickerDetailViewController_limitedUIView;
  v28 = *&v0[OBJC_IVAR____TtC5CAFUI37CAFUIDevicePickerDetailViewController_limitedUIView];
  if (v28)
  {
    [v28 removeFromSuperview];
    v29 = *&v0[v27];
  }

  else
  {
    v29 = 0;
  }

  *&v0[v27] = 0;

  v30 = [v0 navigationController];
  if (v30)
  {
    v31 = v30;
    [v30 setNavigationBarHidden:0 animated:1];
    v26 = v31;
LABEL_22:
  }
}

void CAFUIDevicePickerDetailViewController.__ivar_destroyer()
{

  outlined destroy of weak CAFUIAutomakerSettingObserverDelegate?(v0 + OBJC_IVAR____TtC5CAFUI37CAFUIDevicePickerDetailViewController_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC5CAFUI37CAFUIDevicePickerDetailViewController_carSession);
}

id CAFUIDevicePickerDetailViewController.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CAFUIDevicePickerDetailViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Void __swiftcall CAFUIDevicePickerDetailViewController.viewDidLoad()()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CAFUIDevicePickerDetailViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC5CAFUI24CAFUITableViewController_tableView];
  type metadata accessor for CAFUIDevicePickerDetailTableCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = MEMORY[0x245D0D180](v4);
  }

  [v1 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v3];

  [v1 setDataSource_];
  [v1 setDelegate_];
  v5 = [v0 navigationItem];
  v6 = [*&v0[OBJC_IVAR____TtC5CAFUI37CAFUIDevicePickerDetailViewController_device] name];
  [v5 setTitle_];

  CAFUIDevicePickerDetailViewController.updateDevicePickerLimitedUI()();
}

uint64_t CAFUIDevicePickerDetailViewController.tableView(_:cellForRowAt:)(void *a1)
{
  type metadata accessor for CAFUIDevicePickerDetailTableCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = MEMORY[0x245D0D180](v5);
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v7 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:isa];

  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v7 = *(v1 + OBJC_IVAR____TtC5CAFUI37CAFUIDevicePickerDetailViewController_actions);
    if (IndexPath.row.getter() >= v7[2])
    {
      return v9;
    }

    v10 = IndexPath.row.getter();
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < v7[2])
    {
      v12 = *(v7 + v10 + 32);
      CAFUIDevicePickerDetailViewController.setup(cell:forAction:)(v9, &v12);
      return v9;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CAFUIDevicePickerDetailViewController.setup(cell:forAction:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v38 - v5;
  v6 = type metadata accessor for UIBackgroundConfiguration();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit31UIConfigurationColorTransformerVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  v41 = type metadata accessor for UIListContentConfiguration();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  static UIListContentConfiguration.cell()();
  if (v14 == 3)
  {
    v15 = 0xEF5241435F534948;
    v16 = 0x545F544547524F46;
  }

  else
  {
    if (v14 != 2)
    {
      goto LABEL_6;
    }

    v15 = 0x800000024242DED0;
    v16 = 0xD000000000000019;
  }

  v17 = MEMORY[0x245D0D180](v16, v15);

  v18 = CAFUILocalizedStringForKey(v17);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_6:
  UIListContentConfiguration.text.setter();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v14;
  UIConfigurationColorTransformer.init(_:)();
  v21 = type metadata accessor for UIConfigurationColorTransformer();
  v22 = *(*(v21 - 8) + 56);
  v22(v11, 0, 1, v21);
  v23 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.colorTransformer.setter();
  v23(v45, 0);
  v24 = v41;
  v45[3] = v41;
  v45[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
  (*(v44 + 16))(boxed_opaque_existential_1, v13, v24);
  MEMORY[0x245D0D4E0](v45);
  static UIBackgroundConfiguration.clear()();
  UIBackgroundConfiguration.cornerRadius.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIConfigurationColorTransformer.init(_:)();
  v22(v11, 0, 1, v21);
  UIBackgroundConfiguration.backgroundColorTransformer.setter();
  v27 = v42;
  v26 = v43;
  v28 = v39;
  (*(v42 + 16))(v39, v8, v43);
  (*(v27 + 56))(v28, 0, 1, v26);
  MEMORY[0x245D0D4F0](v28);
  v29 = *(v40 + OBJC_IVAR____TtC5CAFUI37CAFUIDevicePickerDetailViewController_carSession);
  if (!v29)
  {
LABEL_11:
    (*(v27 + 8))(v8, v26);
    result = (*(v44 + 8))(v13, v24);
    v37 = 1;
    goto LABEL_12;
  }

  v30 = v29;
  v31 = [v30 limitUserInterfaces];
  if (!v31 || (v32 = v31, v33 = [v31 BOOLValue], v32, !v33))
  {

    goto LABEL_11;
  }

  v34 = [v30 configuration];
  v35 = [v34 limitableUserInterfaces];

  (*(v27 + 8))(v8, v26);
  result = (*(v44 + 8))(v13, v24);
  v37 = (v35 & 0x40) == 0;
LABEL_12:
  *(a1 + OBJC_IVAR____TtC5CAFUI32CAFUIDevicePickerDetailTableCell_isEnabled) = v37;
  return result;
}

void CAFUIDevicePickerDetailViewController.tableView(_:didSelectRowAt:)(void *a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [a1 cellForRowAtIndexPath_];

  if (v5)
  {
    type metadata accessor for CAFUIDevicePickerDetailTableCell();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      v8 = *(v1 + OBJC_IVAR____TtC5CAFUI37CAFUIDevicePickerDetailViewController_actions);
      if (IndexPath.row.getter() < *(v8 + 16))
      {
        v9 = IndexPath.row.getter();
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v9 < *(v8 + 16))
        {
          v2 = *(v8 + v9 + 32);
          if (one-time initialization token for default == -1)
          {
            goto LABEL_7;
          }

          goto LABEL_28;
        }

        __break(1u);
LABEL_28:
        swift_once();
LABEL_7:
        v10 = static OS_os_log.default;
        v11 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v35 = v7;
          v36 = a1;
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          aBlock[0] = v13;
          *v12 = 136315138;
          if (v2 > 1)
          {
            if (v2 == 2)
            {
              v14 = 0x8000000242428BB0;
              v15 = 0xD000000000000011;
            }

            else
            {
              v14 = 0x8000000242428BD0;
              v15 = 0xD000000000000012;
            }
          }

          else if (v2)
          {
            v15 = 0x527463656E6E6F43;
            v14 = 0xEE00747365757165;
          }

          else
          {
            v14 = 0xE500000000000000;
            v15 = 0x7964616552;
          }

          v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, aBlock);

          *(v12 + 4) = v16;
          _os_log_impl(&dword_24234D000, v10, v11, "Did select action: %s.", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v13);
          MEMORY[0x245D0E5A0](v13, -1, -1);
          MEMORY[0x245D0E5A0](v12, -1, -1);
          v7 = v35;
          a1 = v36;
        }

        if (v2 > 2)
        {
        }

        else
        {
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v17 & 1) == 0)
          {
            LOBYTE(aBlock[0]) = v2;
            specialized CAFUIDevicePickerDetailViewController.prepareRequest(for:action:)(aBlock);
LABEL_25:
            v34 = IndexPath._bridgeToObjectiveC()().super.isa;
            [a1 deselectRowAtIndexPath:v34 animated:1];

            return;
          }
        }

        v18 = MEMORY[0x245D0D180](0x544547524F46, 0xE600000000000000);
        v19 = CAFUILocalizedStringForKey(v18);

        if (!v19)
        {
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = MEMORY[0x245D0D180](v20);
        }

        v21 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v22 = swift_allocObject();
        *(v22 + 16) = v21;
        *(v22 + 24) = v7;
        *(v22 + 32) = v2;
        aBlock[4] = partial apply for closure #1 in CAFUIDevicePickerDetailViewController.tableView(_:didSelectRowAt:);
        aBlock[5] = v22;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIButton) -> ();
        aBlock[3] = &block_descriptor_11;
        v23 = _Block_copy(aBlock);

        v24 = v5;

        v25 = objc_opt_self();
        v26 = [v25 actionWithTitle:v19 style:2 handler:v23];
        _Block_release(v23);

        v27 = MEMORY[0x245D0D180](0x4C45434E4143, 0xE600000000000000);
        v28 = CAFUILocalizedStringForKey(v27);

        if (!v28)
        {
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = MEMORY[0x245D0D180](v29);
        }

        v30 = [v25 actionWithTitle:v28 style:1 handler:0];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_242423B80;
        *(inited + 32) = v26;
        *(inited + 40) = v30;
        v32 = v26;
        v33 = v30;
        CAFUIDevicePickerDetailViewController.displayAlert(actions:)(inited);

        swift_setDeallocating();
        swift_arrayDestroy();
        goto LABEL_25;
      }
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void closure #1 in CAFUIDevicePickerDetailViewController.tableView(_:didSelectRowAt:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a4;
    specialized CAFUIDevicePickerDetailViewController.prepareRequest(for:action:)(&v7);
  }
}

void CAFUIDevicePickerDetailViewController.displayAlert(actions:)(unint64_t a1)
{
  v7 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:0];
  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x245D0D9A0](i, a1);
    }

    else
    {
      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    [v7 addAction_];
  }

LABEL_10:
  [v1 presentViewController:v7 animated:1 completion:0];
}

id closure #1 in CAFUIDevicePickerDetailViewController.setup(cell:forAction:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([v5 isHighlighted])
    {

LABEL_6:
      v7 = [objc_opt_self() _carSystemFocusLabelColor];

      return v7;
    }

    v6 = [v5 isSelected];

    if ((v6 & 1) != 0 || [v5 isFocused])
    {
      goto LABEL_6;
    }
  }

  if (a3 > 2u)
  {

    goto LABEL_12;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
LABEL_12:
    v10 = [objc_opt_self() systemRedColor];
    goto LABEL_13;
  }

  v10 = [objc_opt_self() labelColor];
LABEL_13:

  return v10;
}

id closure #2 in CAFUIDevicePickerDetailViewController.setup(cell:forAction:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([v1 isHighlighted])
    {

LABEL_6:
      v3 = [objc_opt_self() _carSystemFocusColor];

      return v3;
    }

    v2 = [v1 isSelected];

    if ((v2 & 1) != 0 || [v1 isFocused])
    {
      goto LABEL_6;
    }
  }

  v5 = [objc_opt_self() clearColor];

  return v5;
}

id CAFUIDevicePickerDetailTableCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUIDevicePickerDetailTableCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized CAFUIDevicePickerDetailViewController.prepareRequest(for:action:)(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC5CAFUI37CAFUIDevicePickerDetailViewController_device);
  v4 = [v3 identifier];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      [*(v1 + OBJC_IVAR____TtC5CAFUI24CAFUITableViewController_tableView) setUserInteractionEnabled_];
      v10 = v1 + OBJC_IVAR____TtC5CAFUI37CAFUIDevicePickerDetailViewController_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = *(v10 + 8);
        ObjectType = swift_getObjectType();
        v24 = v2;
        (*(v11 + 8))(&v24, v6, v8, ObjectType, v11);

        return swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.default;
  v15 = static os_log_type_t.default.getter();
  result = os_log_type_enabled(v14, v15);
  if (result)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136315138;
    v18 = [v3 identifier];
    if (v18)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v22 = 0xE300000000000000;
      v20 = 7104878;
    }

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v25);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_24234D000, v14, v15, "Unable to perform request, missing deviceIdentifier: %s.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x245D0E5A0](v17, -1, -1);
    return MEMORY[0x245D0E5A0](v16, -1, -1);
  }

  return result;
}

uint64_t sub_24241D6A0()
{
  MEMORY[0x245D0E610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24241D6D8()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24241D73C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24241D788()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

Swift::String __swiftcall CAFUILocalizedValues(for:selectedValues:)(Swift::OpaquePointer a1, Swift::OpaquePointer selectedValues)
{
  v2 = *(a1._rawValue + 2);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = *(selectedValues._rawValue + 2);
  if (!v3)
  {
    goto LABEL_6;
  }

  if (v3 != 1)
  {
    v11 = MEMORY[0x245D0D180](0xD000000000000015, 0x800000024242A600);
    v12 = CAFUILocalizedStringForKey(v11);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2424235A0;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v6 = String.init(format:_:)();
    v7 = v17;

    goto LABEL_8;
  }

  v4 = *(selectedValues._rawValue + 4);
  if (v4 < v2)
  {
    v5 = a1._rawValue + 16 * v4;
    v6 = *(v5 + 4);
    v7 = *(v5 + 5);
  }

  else
  {
LABEL_6:
    v8 = MEMORY[0x245D0D180](0x44455443454C4553, 0xED0000454E4F4E5FLL);
    v9 = CAFUILocalizedStringForKey(v8);

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v10;
  }

LABEL_8:
  v18 = v6;
  v19 = v7;
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

id CAFSeatHeatingCooling.isHeating.getter()
{
  if (![v0 hasOn])
  {
    return ([v0 heatingCoolingLevel] > 0);
  }

  result = [v0 on];
  if (result)
  {
    return ([v0 heatingCoolingLevel] > 0);
  }

  return result;
}

id CAFSeatHeatingCooling.isCooling.getter()
{
  if (![v0 hasOn])
  {
    return ([v0 heatingCoolingLevel] >> 31);
  }

  result = [v0 on];
  if (result)
  {
    return ([v0 heatingCoolingLevel] >> 31);
  }

  return result;
}

id CAFSeatFan.isVenting.getter()
{
  if (![v0 hasOn])
  {
    return ([v0 fanLevel] != 0);
  }

  result = [v0 on];
  if (result)
  {
    return ([v0 fanLevel] != 0);
  }

  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = MEMORY[0x28211D098](percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t Publisher.compactFlatMap<A, B>(_:)()
{
  return MEMORY[0x282146798]();
}

{
  return MEMORY[0x2821467A8]();
}

uint64_t Publisher.map<A>(_:)()
{
  return MEMORY[0x28210EAB8]();
}

{
  return MEMORY[0x28210EAC0]();
}

Swift::String __swiftcall Character.lowercased()()
{
  v0 = MEMORY[0x2821FBA50]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = MEMORY[0x2821FBF50](repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
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