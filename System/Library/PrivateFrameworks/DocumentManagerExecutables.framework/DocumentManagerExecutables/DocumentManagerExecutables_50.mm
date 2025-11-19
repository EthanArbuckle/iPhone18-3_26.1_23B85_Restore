uint64_t DOCSidebarViewController.diffableReloadsCoalescedCount.getter()
{
  v1 = OBJC_IVAR___DOCSidebarViewController_diffableReloadsCoalescedCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSidebarViewController.diffableReloadsCoalescedCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCSidebarViewController_diffableReloadsCoalescedCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Swift::Void __swiftcall DOCSidebarViewController.appLaunchOptimizationsActiveDidChange()()
{
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x388))() & 1) == 0)
  {
    if ((*(v0 + OBJC_IVAR___DOCSidebarViewController_isObservingSectionDataProviders) & 1) == 0)
    {
      *(v0 + OBJC_IVAR___DOCSidebarViewController_isObservingSectionDataProviders) = 1;
      DOCSidebarViewController.startUpdatingLocationsAndServers()();
      DOCSidebarViewController.startUpdatingFavorites()();
      DOCSidebarViewController.startUpdatingTags()();
      if ([*(v0 + OBJC_IVAR___DOCSidebarViewController_configuration) isPickerUI])
      {
        DOCSidebarViewController.startUpdatingRecentlyUsed()();
      }
    }

    DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(0, 1);
  }
}

uint64_t DOCSidebarViewController.appLaunchOptimizationsActive.getter()
{
  v1 = OBJC_IVAR___DOCSidebarViewController_appLaunchOptimizationsActive;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCSidebarViewController.appLaunchOptimizationsActive.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___DOCSidebarViewController_appLaunchOptimizationsActive;
  v5 = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3 && ((*((*MEMORY[0x277D85000] & *v1) + 0x388))(v5) & 1) == 0)
  {
    if ((*(v1 + OBJC_IVAR___DOCSidebarViewController_isObservingSectionDataProviders) & 1) == 0)
    {
      *(v1 + OBJC_IVAR___DOCSidebarViewController_isObservingSectionDataProviders) = 1;
      DOCSidebarViewController.startUpdatingLocationsAndServers()();
      DOCSidebarViewController.startUpdatingFavorites()();
      DOCSidebarViewController.startUpdatingTags()();
      if ([*(v1 + OBJC_IVAR___DOCSidebarViewController_configuration) isPickerUI])
      {
        DOCSidebarViewController.startUpdatingRecentlyUsed()();
      }
    }

    DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(0, 1);
  }
}

void (*DOCSidebarViewController.appLaunchOptimizationsActive.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___DOCSidebarViewController_appLaunchOptimizationsActive;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCSidebarViewController.appLaunchOptimizationsActive.modify;
}

void DOCSidebarViewController.appLaunchOptimizationsActive.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    DOCSidebarViewController.appLaunchOptimizationsActive.setter(v3);
  }

  else
  {
    v5 = v2[3];
    v4 = v2[4];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6 && ((*((*MEMORY[0x277D85000] & *v2[3]) + 0x388))() & 1) == 0)
    {
      v7 = v2[3];
      if ((*(v7 + OBJC_IVAR___DOCSidebarViewController_isObservingSectionDataProviders) & 1) == 0)
      {
        *(v7 + OBJC_IVAR___DOCSidebarViewController_isObservingSectionDataProviders) = 1;
        DOCSidebarViewController.startUpdatingLocationsAndServers()();
        DOCSidebarViewController.startUpdatingFavorites()();
        DOCSidebarViewController.startUpdatingTags()();
        if ([*(v7 + OBJC_IVAR___DOCSidebarViewController_configuration) isPickerUI])
        {
          DOCSidebarViewController.startUpdatingRecentlyUsed()();
        }
      }

      DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(0, 1);
    }
  }

  free(v2);
}

Swift::Void __swiftcall DOCSidebarViewController.clearIconCache()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x3B0))(v4);
  v3 = v2;

  *v3 = MEMORY[0x277D84F98];
  v1(v4, 0);
}

void *DOCSidebarViewController.dropPointIndicatorView.getter()
{
  v1 = OBJC_IVAR___DOCSidebarViewController_dropPointIndicatorView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSidebarViewController.dropPointIndicatorView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCSidebarViewController_dropPointIndicatorView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

BOOL DOCSidebarViewController.isExternalDropTargettingActive.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x3D8))();
  if (v1)
  {
  }

  return v1 != 0;
}

void *DOCSidebarViewController.diskArbSession.getter()
{
  v1 = OBJC_IVAR___DOCSidebarViewController_diskArbSession;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSidebarViewController.diskArbSession.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCSidebarViewController_diskArbSession;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCSidebarViewController.EditingSession.editingCell.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void DOCSidebarViewController.EditingSession.editingCell.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

id DOCSidebarViewController.EditingSession.editingSidebarItem.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  result = outlined copy of DOCSidebarItem?(v3, v4, v5, v6, v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return result;
}

void DOCSidebarViewController.EditingSession.editingSidebarItem.setter(_OWORD *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = a1[1];
  *(v1 + 32) = *a1;
  *(v1 + 48) = v8;
  v9 = *(v1 + 72);
  *(v1 + 57) = *(a1 + 25);
  outlined consume of DOCSidebarItem?(v3, v4, v5, v6, v7, v9);
}

uint64_t DOCSidebarViewController.EditingSession.setEditingCell(_:item:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(*v2 + 120);
  v8 = a1;
  v11 = *(a2 + 16);
  v12 = *a2;
  v7(a1);
  v14[0] = v12;
  v14[1] = v11;
  v15 = v5;
  v16 = v6;
  v9 = *(*v2 + 144);
  outlined init with copy of DOCSidebarItem(a2, v13);
  return v9(v14);
}

Swift::Void __swiftcall DOCSidebarViewController.EditingSession.clearEditingCell()()
{
  (*(*v0 + 120))(0);
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  v3 = -1;
  (*(*v0 + 144))(v1);
}

uint64_t DOCSidebarViewController.EditingSession.__allocating_init(_:editMode:)(void *a1, char a2)
{
  v4 = swift_allocObject();
  DOCSidebarViewController.EditingSession.init(_:editMode:)(a1, a2);
  return v4;
}

id DOCSidebarViewController.EditingSession.init(_:editMode:)(void *a1, char a2)
{
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 72) = -1;
  v3 = (*((*MEMORY[0x277D85000] & *a1) + 0x248))();
  (*(*v3 + 136))(3);
  v5 = v4;

  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 80))(ObjectType, v5);
  swift_unknownObjectRelease();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v43 = MEMORY[0x277D84F90];
  v10 = *(v7 + 16);
LABEL_2:
  v11 = v7 - 16 + 48 * v8;
  while (1)
  {
    if (v10 == v8)
    {

      if (v9 >> 62)
      {
        goto LABEL_26;
      }

      v15 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_11;
      }

      goto LABEL_27;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    ++v8;
    v12 = (v11 + 48);
    v13 = *(v11 + 88);
    v11 += 48;
    if (v13 == 1)
    {
      v14 = *v12;
      MEMORY[0x24C1FB090]();
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v9 = v43;
      goto LABEL_2;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    v15 = __CocoaSet.count.getter();
    if (!v15)
    {
      break;
    }

LABEL_11:
    v16 = 0;
    v41 = v9 & 0xC000000000000001;
    v40 = v9 & 0xFFFFFFFFFFFFFF8;
    v39 = *MEMORY[0x277D060F0];
    v38 = *MEMORY[0x277D05DD0];
    while (1)
    {
      if (v41)
      {
        v17 = MEMORY[0x24C1FC540](v16, v9);
      }

      else
      {
        if (v16 >= *(v40 + 16))
        {
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v20 = v9;
      v21 = DOCSourceVisibilityController.loadStoredIdentifiers(scope:)(1);
      v22 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo27DOCDocumentSourceIdentifiera_SayAEGTt0g5Tf4g_n(v21);

      v23 = DOCSourceVisibilityController.loadStoredIdentifiers(scope:)(0);
      v24 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo27DOCDocumentSourceIdentifiera_SayAEGTt0g5Tf4g_n(v23);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249BA08C0;
      result = DOCDocumentSourceIdentifierICloud_Current();
      if (!result)
      {
        __break(1u);
        return result;
      }

      *(inited + 32) = result;
      *(inited + 40) = v39;
      *(inited + 48) = v38;
      v27 = v39;
      v28 = v38;
      v29 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo27DOCDocumentSourceIdentifiera_Tt0g5Tf4g_n(inited);
      swift_setDeallocating();
      type metadata accessor for DOCDocumentSourceIdentifier(0);
      swift_arrayDestroy();
      specialized Set.union<A>(_:)(v24, v22);
      specialized Set.union<A>(_:)(v29, v30);
      v32 = v31;
      v33 = [v18 identifier];
      v34 = specialized Set.contains(_:)(v33, v32);

      if ((v34 & 1) == 0 && [v18 status] && objc_msgSend(v18, sel_status) != 2)
      {

        v35 = 1;
        goto LABEL_28;
      }

      ++v16;
      v9 = v20;
      if (v19 == v15)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_27:
  v35 = 0;
LABEL_28:

  result = v37;
  v37[16] = v35;
  v37[17] = a2;
  return result;
}

uint64_t DOCSidebarViewController.EditingSession.__deallocating_deinit()
{
  outlined consume of DOCSidebarItem?(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t DOCSidebarViewController.editMode.setter(unsigned __int8 a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x440))();
  if (result != a1)
  {
    if (a1)
    {
      if ((*((*v4 & *v1) + 0x428))())
      {
      }

      else
      {
        type metadata accessor for DOCSidebarViewController.EditingSession();
        v7 = swift_allocObject();
        v8 = v2;
        DOCSidebarViewController.EditingSession.init(_:editMode:)(v8, a1);
        return (*((*v4 & *v8) + 0x430))(v7);
      }
    }

    else
    {
      v6 = *((*v4 & *v1) + 0x430);

      return v6(0);
    }
  }

  return result;
}

uint64_t DOCSidebarViewController.editMode.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x428))();
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 17);

  return v2;
}

uint64_t (*DOCSidebarViewController.editMode.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x428))();
  if (v3)
  {
    v4 = *(v3 + 17);
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 8) = v4;
  return DOCSidebarViewController.editMode.modify;
}

uint64_t DOCSidebarViewController.shouldStopEditingOnFinishedEdit.getter()
{
  v1 = OBJC_IVAR___DOCSidebarViewController_shouldStopEditingOnFinishedEdit;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSidebarViewController.shouldStopEditingOnFinishedEdit.setter(char a1)
{
  v3 = OBJC_IVAR___DOCSidebarViewController_shouldStopEditingOnFinishedEdit;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCSidebarViewController.diffableReloadWorkItem.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t key path getter for DOCSidebarViewController.SwipeToDeletePresentationContext.invalidationHandler : DOCSidebarViewController.SwipeToDeletePresentationContext@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 88))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCSidebarViewController.SwipeToDeletePresentationContext.invalidationHandler : DOCSidebarViewController.SwipeToDeletePresentationContext(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 96);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOCSidebarViewController.SwipeToDeletePresentationContext.invalidationHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1);
  return v1;
}

uint64_t DOCSidebarViewController.SwipeToDeletePresentationContext.invalidationHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5);
}

Swift::Void __swiftcall DOCSidebarViewController.SwipeToDeletePresentationContext.invalidate()()
{
  v1 = (*(*v0 + 88))();
  if (v1)
  {
    v2 = v1;
    v1();
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v2);
  }

  v3 = *(*v0 + 96);

  v3(0, 0);
}

uint64_t DOCSidebarViewController.SwipeToDeletePresentationContext.__deallocating_deinit()
{
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t DOCSidebarViewController.SwipeToDeletePresentationContext.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t DOCSidebarViewController.SwipeToDeletePresentationContext.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

double DOCSidebarViewController.DOCSidebarItemChangePacer.__allocating_init(pacing:behaviors:)(char a1, double a2)
{
  v4 = swift_allocObject();
  result = 0.0;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 104) = 255;
  *(v4 + 112) = 0;
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  return result;
}

uint64_t key path getter for DOCSidebarViewController.DOCSidebarItemChangePacer.workDeferredWhilePacerWasActive : DOCSidebarViewController.DOCSidebarItemChangePacer@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 400))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCSidebarViewController.DOCSidebarItemChangePacer.workDeferredWhilePacerWasActive : DOCSidebarViewController.DOCSidebarItemChangePacer(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 408);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOCSidebarViewController.DOCSidebarItemChangePacer.workDeferredWhilePacerWasActive.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1);
  return v1;
}

uint64_t DOCSidebarViewController.DOCSidebarItemChangePacer.workDeferredWhilePacerWasActive.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 120);
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5);
}

uint64_t DOCSidebarViewController.DOCSidebarItemChangePacer.init(pacing:behaviors:)(char a1, double a2)
{
  *(v2 + 96) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 104) = 255;
  *(v2 + 112) = 0;
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t DOCSidebarViewController.DOCSidebarItemChangePacer.deinit()
{
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 32));
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 48));
  outlined consume of DOCSidebarItem?(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 120));
  return v0;
}

uint64_t DOCSidebarViewController.DOCSidebarItemChangePacer.__deallocating_deinit()
{
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 32));
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 48));
  outlined consume of DOCSidebarItem?(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 120));

  return swift_deallocClassInstance();
}

uint64_t key path setter for DOCSidebarViewController.preferredFocusIndexPath : DOCSidebarViewController(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v9 - v6, &_s10Foundation9IndexPathVSgMd);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x4A8))(v7);
}

uint64_t DOCSidebarViewController.preferredFocusIndexPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___DOCSidebarViewController_preferredFocusIndexPath;
  swift_beginAccess();
  return outlined init with copy of DOCGridLayout.Spec?(v1 + v3, a1, &_s10Foundation9IndexPathVSgMd);
}

uint64_t DOCSidebarViewController.preferredFocusIndexPath.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCSidebarViewController_preferredFocusIndexPath;
  swift_beginAccess();
  outlined assign with take of IndexPath?(a1, v1 + v3, &_s10Foundation9IndexPathVSgMd);
  return swift_endAccess();
}

id DOCSidebarViewController.currentlySelectedSidebarItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___DOCSidebarViewController_currentlySelectedSidebarItem;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 40);
  result = outlined copy of DOCSidebarItem?(v4, v5, v6, v7, v8, v3);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v3;
  return result;
}

uint64_t DOCSidebarViewController.currentlySelectedSidebarItem.setter(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR___DOCSidebarViewController_currentlySelectedSidebarItem;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v9;
  v10 = *(v3 + 40);
  *(v3 + 25) = *(a1 + 25);
  outlined init with copy of DOCGridLayout.Spec?(a1, v12, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
  outlined consume of DOCSidebarItem?(v4, v5, v6, v7, v8, v10);
  DOCSidebarViewController.updatePreferredFocusIndexPath()();
  return outlined destroy of CharacterSet?(a1, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
}

uint64_t (*DOCSidebarViewController.currentlySelectedSidebarItem.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCSidebarViewController.currentlySelectedSidebarItem.modify;
}

void *DOCSidebarViewController.selectedLocation.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___DOCSidebarViewController_locationSelection) + 16);
  v2 = v1;
  return v1;
}

void *DOCSidebarViewController.searchController.getter()
{
  v1 = OBJC_IVAR___DOCSidebarViewController_searchController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void @objc DOCSidebarViewController.trashObserver.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void DOCSidebarViewController.searchController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCSidebarViewController_searchController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCSidebarViewController.sourcesOrderObserver.getter()
{
  v1 = OBJC_IVAR___DOCSidebarViewController_sourcesOrderObserver;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSidebarViewController.sourcesOrderObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCSidebarViewController_sourcesOrderObserver;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCSidebarViewController.itemToCachedIcon.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t DOCSidebarViewController.lastSearchDisplayMode.getter()
{
  v1 = OBJC_IVAR___DOCSidebarViewController_lastSearchDisplayMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSidebarViewController.lastSearchDisplayMode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCSidebarViewController_lastSearchDisplayMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void DOCSidebarViewController.additionalTrailingNavigationBarButtonItems.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCSidebarViewController_additionalTrailingNavigationBarButtonItems;
  swift_beginAccess();
  *(v1 + v3) = a1;

  DOCSidebarViewController.updateNavigationButtons()();
}

Swift::Void __swiftcall DOCSidebarViewController.updateNavigationButtons()()
{
  v1 = v0;
  if (([v0 doc:sel__doc_performLiveResizeSkipped_updateNavigationButtons scheduleHandlerIfInLiveResize:?] & 1) == 0)
  {
    v2 = [v0 traitCollection];
    if (one-time initialization token for userInterfaceIdiom != -1)
    {
      swift_once();
    }

    v75 = static UITraitCollection.Traits.userInterfaceIdiom;
    v76 = qword_27EEE9CD8;

    v3 = UITraitCollection.doc_hasSpecified(_:)(&v75);

    if (v3)
    {
      v4 = [v1 splitViewController];
      if (v4)
      {
        v5 = v4;
        objc_opt_self();
        v6 = swift_dynamicCastObjCClass();
        if (!v6)
        {
          v8 = 0;
          goto LABEL_11;
        }

        v7 = [v6 fullDocumentManagerViewController];

        if (v7)
        {
          v8 = [v7 allowsPickingMultipleItems];
          v5 = v7;
LABEL_11:

LABEL_12:
          v9 = *(v1 + OBJC_IVAR___DOCSidebarViewController_configuration);
          v10 = [v9 isPickerUI];
          v11 = [v1 navigationItem];
          v12 = [v11 searchController];

          if (v12)
          {
            if ([v12 isActive])
            {
              goto LABEL_18;
            }
          }

          if (v10 & v8 & 1 | ((DOCSidebarViewController.isEffectivelyCollapsed()() & 1) == 0))
          {
            v74 = 0;
LABEL_19:
            v13 = OBJC_IVAR___DOCSidebarViewController_bbiStorage;
            v14 = *(**(v1 + OBJC_IVAR___DOCSidebarViewController_bbiStorage) + 128);

            v16 = v14(&v75);
            v17 = *(v15 + 8);
            if (v17)
            {
              v18 = *(v15 + 8);
            }

            else
            {
              v19 = v15;
              v20 = closure #1 in DOCSidebarViewController.revealFloatingBarItem.getter();
              v21 = *(v19 + 8);
              *(v19 + 8) = v20;
              v22 = v20;

              type metadata accessor for DOCBarButtonItemGroup();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
              v23 = swift_allocObject();
              *(v23 + 16) = xmmword_249BA0290;
              *(v23 + 32) = v22;
              v18 = v22;
              v24 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

              v25 = *v19;
              *v19 = v24;

              v17 = 0;
            }

            v26 = v17;
            v16(&v75, 0);

            if (([v1 sidebarVisibilityPinnedToWindowSizingOnly] & 1) != 0 || objc_msgSend(v9, sel_isPickerUI) || DOCSidebarViewController.currentPresentationContext.getter() == 2)
            {
              v27 = 1;
            }

            else
            {
              v27 = DOCSidebarViewController.currentPresentationContext.getter();
            }

            [v18 setHidden_];

            v28 = *(**(v1 + v13) + 128);

            v30 = v28(&v75);
            v31 = *(v29 + 8);
            if (v31)
            {
              v32 = *(v29 + 8);
            }

            else
            {
              v33 = v29;
              v34 = closure #1 in DOCSidebarViewController.revealFloatingBarItem.getter();
              v35 = *(v33 + 8);
              *(v33 + 8) = v34;
              v36 = v34;

              type metadata accessor for DOCBarButtonItemGroup();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
              v37 = swift_allocObject();
              *(v37 + 16) = xmmword_249BA0290;
              *(v37 + 32) = v36;
              v32 = v36;
              v38 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

              v39 = *v33;
              *v33 = v38;

              v31 = 0;
            }

            v40 = v31;
            v30(&v75, 0);

            v41 = MEMORY[0x24C1FAD20](0x6953656C67676F54, 0xED00007261626564);
            [v32 setAccessibilityIdentifier_];

            v42 = [v1 navigationItem];
            [v42 setSearchController_];

            v43 = [v1 navigationItem];
            if (([v1 enclosedInUIPDocumentLanding] & 1) != 0 || (DOCSidebarViewController.titleSettings.getter(), v45 = v44, , !v45))
            {
              v46 = 2;
            }

            else
            {

              v46 = 1;
            }

            [v43 setLargeTitleDisplayMode_];

            v47 = [v1 navigationItem];
            v48 = DOCSidebarViewController.titleSettings.getter();
            v50 = v49;

            if (v50)
            {
              v51 = MEMORY[0x24C1FAD20](v48, v50);
            }

            else
            {
              v51 = 0;
            }

            [v47 setTitle_];

            v52 = [v1 navigationItem];
            DOCSidebarViewController.titleSettings.getter();
            v54 = v53;
            v56 = v55;

            if (v56)
            {
              v57 = MEMORY[0x24C1FAD20](v54, v56);
            }

            else
            {
              v57 = 0;
            }

            [v52 setBackButtonTitle_];

            v58 = [v1 navigationItem];
            [v58 _setSupportsTwoLineLargeTitles_];

            v59 = [v1 navigationItem];
            [v59 _setPreserveSearchBarAcrossTransitions_];

            v60 = [v1 navigationItem];
            [v60 setPreferredSearchBarPlacement_];

            v61 = [v1 navigationItem];
            DOCSidebarViewController.titleSettings.getter();
            v63 = v62;
            v65 = v64;

            if (v65)
            {
              v66 = MEMORY[0x24C1FAD20](v63, v65);
            }

            else
            {
              v66 = 0;
            }

            [v61 setBackButtonTitle_];

            v67 = [v1 navigationItem];
            v68 = DOCSidebarViewController.currentLeftBarButtonItems.getter();
            specialized UINavigationItem.doc_applyLeadingBarButtonItems(_:fixedItems:animated:)(v68, 0);

            v69 = [v1 navigationItem];
            v70 = DOCSidebarViewController.currentRightBarButtonItems.getter();
            specialized UINavigationItem.doc_applyTrailingBarButtonItems(_:fixedItems:animated:)(v70, 0);

            v71 = [v1 navigationItem];
            v72 = [v71 searchController];

            if (v72)
            {
              v73 = [v72 searchBar];

              [v73 _setEnabled_];
            }

            return;
          }

          v12 = (*((*MEMORY[0x277D85000] & *v1) + 0x508))();
LABEL_18:
          v74 = v12;
          goto LABEL_19;
        }
      }

      v8 = 0;
      goto LABEL_12;
    }
  }
}

uint64_t (*DOCSidebarViewController.additionalTrailingNavigationBarButtonItems.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCSidebarViewController.additionalTrailingNavigationBarButtonItems.modify;
}

double DOCSidebarViewController.BBIStorage.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  return result;
}

Class @objc DOCSidebarViewController.additionalTrailingNavigationBarButtonItems.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  swift_beginAccess();
  type metadata accessor for NSMutableAttributedString(0, a4);

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

void DOCSidebarViewController.customActions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCSidebarViewController_customActions;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = *(v1 + OBJC_IVAR___DOCSidebarViewController_actionManager);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setActions_];
}

void (*DOCSidebarViewController.customActions.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR___DOCSidebarViewController_customActions;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCSidebarViewController.customActions.modify;
}

void DOCSidebarViewController.customActions.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + OBJC_IVAR___DOCSidebarViewController_actionManager);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 setActions_];
  }

  free(v3);
}

void *DOCSidebarViewController.debugOptionsMenu.getter()
{
  v1 = OBJC_IVAR___DOCSidebarViewController_debugOptionsMenu;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSidebarViewController.pickerContext.setter(void *a1, uint64_t *a2, void (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;

  a3();
}

uint64_t (*DOCSidebarViewController.debugOptionsMenu.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCSidebarViewController.debugOptionsMenu.modify;
}

uint64_t DOCSidebarViewController.pickerContext.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void *DOCSidebarViewController.init(configuration:sourceObserver:)(void *a1, void *a2)
{
  v3 = v2;
  v3[OBJC_IVAR___DOCSidebarViewController_sidebarHasActiveFocus] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___DOCSidebarViewController_pickerContext] = 0;
  *&v3[OBJC_IVAR___DOCSidebarViewController_diffableReloadWorkItem] = 0;
  v3[OBJC_IVAR___DOCSidebarViewController_isObservingSectionDataProviders] = 0;
  v3[OBJC_IVAR___DOCSidebarViewController_hasSomeUnseenSources] = 0;
  *&v3[OBJC_IVAR___DOCSidebarViewController____lazy_storage___notificationsController] = 0;
  v6 = &v3[OBJC_IVAR___DOCSidebarViewController_recentlyUsedNotificationRegistration];
  *v6 = 0;
  v6[1] = 0;
  *&v3[OBJC_IVAR___DOCSidebarViewController_favoritesSubscriber] = 0;
  *&v3[OBJC_IVAR___DOCSidebarViewController_recentlyUsedFavoritesSubscriber] = 0;
  v3[OBJC_IVAR___DOCSidebarViewController_hasSeenInitiallyGatheredFavorites] = 0;
  *&v3[OBJC_IVAR___DOCSidebarViewController_trashObserver] = 0;
  *&v3[OBJC_IVAR___DOCSidebarViewController_trashSubscriber] = 0;
  v7 = &v3[OBJC_IVAR___DOCSidebarViewController__diffableDataSource];
  *v7 = 0u;
  v7[1] = 0u;
  *&v3[OBJC_IVAR___DOCSidebarViewController_diffableReloadIsInProgressCount] = 0;
  v3[OBJC_IVAR___DOCSidebarViewController_diffableNeedsReload] = 1;
  *&v3[OBJC_IVAR___DOCSidebarViewController_diffableReloadsCoalescedCount] = 0;
  v3[OBJC_IVAR___DOCSidebarViewController_appLaunchOptimizationsActive] = 1;
  v8 = OBJC_IVAR___DOCSidebarViewController_itemToCachedIcon;
  v9 = MEMORY[0x277D84F90];
  *&v3[v8] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables14DOCSidebarItemO_SDySo7UIColorCSo6CGSizeV13requestedSize_AC0F4IconV4icontGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v3[OBJC_IVAR___DOCSidebarViewController_dropPointIndicatorView] = 0;
  *&v3[OBJC_IVAR___DOCSidebarViewController_activeDropContext] = 0;
  v10 = OBJC_IVAR___DOCSidebarViewController_diskArbSession;
  *&v3[v10] = DASessionCreate(*MEMORY[0x277CBECE8]);
  *&v3[OBJC_IVAR___DOCSidebarViewController_trackedExternalDisksInRepair] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR___DOCSidebarViewController_editingSession] = 0;
  v3[OBJC_IVAR___DOCSidebarViewController_shouldStopEditingOnFinishedEdit] = 0;
  *&v3[OBJC_IVAR___DOCSidebarViewController_swipeToDeletePresentation] = 0;
  v11 = OBJC_IVAR___DOCSidebarViewController_itemSelectionPacer;
  type metadata accessor for DOCSidebarViewController.DOCSidebarItemChangePacer(0);
  v12 = swift_allocObject();
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0;
  *(v12 + 120) = 0;
  *(v12 + 128) = 0;
  *(v12 + 104) = 255;
  *(v12 + 112) = 0;
  *(v12 + 16) = 0x3FE0000000000000;
  *(v12 + 24) = 3;
  *&v3[v11] = v12;
  v13 = OBJC_IVAR___DOCSidebarViewController_preferredFocusIndexPath;
  v14 = type metadata accessor for IndexPath();
  (*(*(v14 - 8) + 56))(&v3[v13], 1, 1, v14);
  v15 = &v3[OBJC_IVAR___DOCSidebarViewController_currentlySelectedSidebarItem];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  v15[40] = -1;
  v16 = &v3[OBJC_IVAR___DOCSidebarViewController_pendingSelectionProviderDomainIdentifier];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR___DOCSidebarViewController_locationSelection;
  type metadata accessor for DOCSidebarViewController.LocationSelection();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *&v3[v17] = v18;
  *&v3[OBJC_IVAR___DOCSidebarViewController_searchController] = 0;
  *&v3[OBJC_IVAR___DOCSidebarViewController_sourcesOrderObserver] = 0;
  *&v3[OBJC_IVAR___DOCSidebarViewController_sourcesVisitedObserver] = 0;
  v19 = OBJC_IVAR___DOCSidebarViewController_sectionsDisablingUpdateAnimationUntilFirstLoad;
  *&v3[v19] = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC26DocumentManagerExecutables21DOCSidebarSectionKindO_SayAFGTt0g5Tf4g_n(&outlined read-only object #0 of DOCSidebarViewController.init(configuration:sourceObserver:));
  *&v3[OBJC_IVAR___DOCSidebarViewController_lastSearchDisplayMode] = 0;
  *&v3[OBJC_IVAR___DOCSidebarViewController_additionalTrailingNavigationBarButtonItems] = v9;
  v20 = OBJC_IVAR___DOCSidebarViewController_bbiStorage;
  type metadata accessor for DOCSidebarViewController.BBIStorage();
  v21 = swift_allocObject();
  v21[1] = 0u;
  v21[2] = 0u;
  v21[3] = 0u;
  *&v3[v20] = v21;
  v22 = OBJC_IVAR___DOCSidebarViewController_actionManager;
  *&v3[v22] = [objc_allocWithZone(DOCActionManager) init];
  *&v3[OBJC_IVAR___DOCSidebarViewController_customActions] = v9;
  *&v3[OBJC_IVAR___DOCSidebarViewController_contextMenuInteraction] = 0;
  v3[OBJC_IVAR___DOCSidebarViewController_modelDidUpdateDuringUIChange] = 0;
  *&v3[OBJC_IVAR___DOCSidebarViewController__updatingModelForUIChangeCount] = 0;
  *&v3[OBJC_IVAR___DOCSidebarViewController_debugOptionsMenu] = 0;
  *&v3[OBJC_IVAR___DOCSidebarViewController_sourceObserver] = a2;
  v23 = one-time initialization token for docUserDefaults;
  v47 = a2;
  if (v23 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v24 = static NSUserDefaults.docUserDefaults;
  if (static NSUserDefaults.docUserDefaults)
  {
    v25 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSUserDefaults);
    v26 = &protocol witness table for NSUserDefaults;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  type metadata accessor for DOCSourceVisibilityController();
  v27 = swift_allocObject();
  *(v27 + 16) = 0xD00000000000001FLL;
  *(v27 + 24) = 0x8000000249BD9000;
  *(v27 + 80) = v9;
  v28 = v24;
  v29 = a1;
  *(v27 + 88) = MEMORY[0x24C1FAD20](0xD00000000000003FLL, 0x8000000249BD9020);
  *(v27 + 96) = 0u;
  *(v27 + 112) = 0u;
  *(v27 + 32) = v24;
  *(v27 + 40) = 0;
  *(v27 + 48) = 0;
  *(v27 + 56) = v25;
  *(v27 + 64) = v26;
  *(v27 + 72) = v29;
  *&v3[OBJC_IVAR___DOCSidebarViewController_sourceVisibilityController] = v27;
  type metadata accessor for DOCMutableSidebarData();
  *(swift_allocObject() + 40) = 0;
  v30 = v29;

  *&v3[OBJC_IVAR___DOCSidebarViewController__mutableSectionsData] = DOCSidebarData.init(configuration:sourceVisibilityController:loadSavedState:)(v30, v27, 1);
  *&v3[OBJC_IVAR___DOCSidebarViewController_configuration] = v30;
  v31 = objc_allocWithZone(MEMORY[0x277D75300]);
  v32 = v30;
  v33 = [v31 init];
  v49.receiver = v3;
  v49.super_class = type metadata accessor for DOCSidebarViewController(0);
  v34 = objc_msgSendSuper2(&v49, sel_initWithCollectionViewLayout_, v33);

  v35 = v34;
  DOCSidebarViewController.updateNavigationButtons()();
  v36 = *((*MEMORY[0x277D85000] & *v35) + 0x488);
  v37 = v36();
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = *(*v37 + 216);
  v40 = v35;
  v39(partial apply for closure #1 in DOCSidebarViewController.configureItemSelectionPacer(), v38);

  v42 = (v36)(v41);
  (*(*v42 + 240))(closure #2 in DOCSidebarViewController.configureItemSelectionPacer(), 0);

  DOCSidebarViewController.observeRemoveableMediaState()();
  v43 = [objc_opt_self() shared];
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();

  aBlock[4] = partial apply for closure #1 in DOCSidebarViewController.init(configuration:sourceObserver:);
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_19_7;
  v45 = _Block_copy(aBlock);

  [v43 performAfterLaunchAlwaysAsync:0 block:v45];
  _Block_release(v45);

  return v40;
}

void closure #1 in DOCSidebarViewController.init(configuration:sourceObserver:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x390))(0);
  }

  v2 = [objc_opt_self() shared];
  [v2 loadIconsFromDiskIfNeeded];
}

void DOCSidebarViewController.__ivar_destroyer()
{
  outlined destroy of weak DOCPresentationPreheatable?(v0 + OBJC_IVAR___DOCSidebarViewController_sidebarDelegate);

  outlined destroy of CharacterSet?(v0 + OBJC_IVAR___DOCSidebarViewController__diffableDataSource, &_sypSgMd);

  outlined destroy of CharacterSet?(v0 + OBJC_IVAR___DOCSidebarViewController_preferredFocusIndexPath, &_s10Foundation9IndexPathVSgMd);
  outlined consume of DOCSidebarItem?(*(v0 + OBJC_IVAR___DOCSidebarViewController_currentlySelectedSidebarItem), *(v0 + OBJC_IVAR___DOCSidebarViewController_currentlySelectedSidebarItem + 8), *(v0 + OBJC_IVAR___DOCSidebarViewController_currentlySelectedSidebarItem + 16), *(v0 + OBJC_IVAR___DOCSidebarViewController_currentlySelectedSidebarItem + 24), *(v0 + OBJC_IVAR___DOCSidebarViewController_currentlySelectedSidebarItem + 32), *(v0 + OBJC_IVAR___DOCSidebarViewController_currentlySelectedSidebarItem + 40));

  v1 = *(v0 + OBJC_IVAR___DOCSidebarViewController_debugOptionsMenu);
}

id DOCSidebarViewController.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR___DOCSidebarViewController_favoritesSubscriber];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 sharedManager];
    [v4 removeSubscriber_];
  }

  v5 = *&v0[OBJC_IVAR___DOCSidebarViewController_recentlyUsedFavoritesSubscriber];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 sharedManager];
    [v8 removeSubscriber_];
  }

  v10.receiver = v0;
  v10.super_class = type metadata accessor for DOCSidebarViewController(0);
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

id DOCSidebarViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t DOCSidebarViewController.updateTopItemsSection()()
{
  v1 = v0;
  v14 = 0;
  v2 = [v0 enclosingTabSwitcherStyle];
  if (!v2)
  {
LABEL_4:
    v3 = *(v0 + OBJC_IVAR___DOCSidebarViewController_configuration);
    HIBYTE(v14) = [*(v1 + OBJC_IVAR___DOCSidebarViewController_configuration) canPresentContentForTab_];
    LOBYTE(v14) = [v3 canPresentContentForTab_];
    goto LABEL_5;
  }

  if (v2 != 1)
  {
    if (v2 != 2)
    {
      type metadata accessor for DOCTabSwitcherStyle(0);
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    goto LABEL_4;
  }

LABEL_5:
  v4 = *(**(v1 + OBJC_IVAR___DOCSidebarViewController__mutableSectionsData) + 184);

  v4(0);

  if (specialized closure #1 in DOCSidebarViewController.updateTopItemsSection()(v1, &v14 + 1, &v14))
  {
    v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x550))();
    if (*(v5 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v6 = Hasher._finalize()(), v7 = -1 << *(v5 + 32), v8 = v6 & ~v7, ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
    {
      v9 = ~v7;
      while (1)
      {
        v10 = *(*(v5 + 48) + v8);
        if (v10 <= 2 && v10 != 1 && v10 != 2)
        {
          break;
        }

        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {
          v8 = (v8 + 1) & v9;
          if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
          {
            continue;
          }
        }

        v12 = v11 ^ 1;
        goto LABEL_16;
      }

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

LABEL_16:

    if (*(v1 + OBJC_IVAR___DOCSidebarViewController__updatingModelForUIChangeCount) <= 0)
    {
      DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(v12 & 1, 1);
    }

    else
    {
      DOCSidebarViewController.markModelDidUpdateDuringUIChange()();
    }
  }
}

void DOCSidebarViewController.startUpdatingLocationsAndServers()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x520))();
  if (v2)
  {
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR___DOCSidebarViewController_configuration);
    v4 = *(v0 + OBJC_IVAR___DOCSidebarViewController_sourceObserver);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = objc_allocWithZone(DOCSourceOrderObserver);
    v12[4] = partial apply for closure #1 in DOCSidebarViewController.startUpdatingLocationsAndServers();
    v12[5] = v5;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v12[3] = &block_descriptor_271_0;
    v7 = _Block_copy(v12);

    v8 = [v6 initWithConfiguration:v3 sourceObserver:v4 updateBlock:v7];
    _Block_release(v7);

    (*((*v1 & *v0) + 0x528))(v8);
  }

  v9 = OBJC_IVAR___DOCSidebarViewController_sourcesVisitedObserver;
  if (!*(v0 + OBJC_IVAR___DOCSidebarViewController_sourcesVisitedObserver))
  {
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for DOCSourceVisibilityController.VisibilityObserver();
    v11 = swift_allocObject();
    *(v11 + 16) = partial apply for closure #2 in DOCSidebarViewController.startUpdatingLocationsAndServers();
    *(v11 + 24) = v10;
    *(v0 + v9) = v11;

    DOCSourceVisibilityController.addObserver(_:)(v11);
  }
}

void DOCSidebarViewController.startUpdatingFavorites()()
{
  v1 = OBJC_IVAR___DOCSidebarViewController_favoritesSubscriber;
  if (!*(v0 + OBJC_IVAR___DOCSidebarViewController_favoritesSubscriber))
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = objc_opt_self();

    v4 = [v3 sharedManager];
    v5 = swift_allocObject();
    *(v5 + 16) = partial apply for closure #1 in DOCSidebarViewController.startUpdatingFavorites();
    *(v5 + 24) = v2;
    v9[4] = partial apply for thunk for @callee_guaranteed () -> ();
    v9[5] = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed [FPItem]) -> ();
    v9[3] = &block_descriptor_267_0;
    v6 = _Block_copy(v9);

    v7 = [v4 addSubscriber_];
    _Block_release(v6);

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;

    closure #1 in DOCSidebarViewController.startUpdatingFavorites()();
  }
}

uint64_t DOCSidebarViewController.startUpdatingTags()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v17 - v4;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = DOCSidebarViewController.notificationsController.getter();
  v8 = *MEMORY[0x277D764E0];
  v17 = 0u;
  v18 = 0u;
  v9 = objc_opt_self();
  v10 = [v9 mainQueue];
  (*(*v7 + 152))(v8, &v17, v10, closure #2 in DOCSidebarViewController.startUpdatingTags(), 0);

  outlined destroy of CharacterSet?(&v17, &_sypSgMd);
  v11 = *(v1 + OBJC_IVAR___DOCSidebarViewController____lazy_storage___notificationsController);
  v12 = *MEMORY[0x277D061D0];
  v17 = 0u;
  v18 = 0u;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in DOCSidebarViewController.startUpdatingTags();
  *(v13 + 24) = v6;

  v14 = [v9 mainQueue];
  (*(*v11 + 144))(v12, &v17, v14, partial apply for closure #3 in DOCSidebarViewController.startUpdatingTags(), v13);

  outlined destroy of CharacterSet?(&v17, &_sypSgMd);
  v15 = type metadata accessor for Notification();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  closure #1 in DOCSidebarViewController.startUpdatingTags()();

  return outlined destroy of CharacterSet?(v5, &_s10Foundation12NotificationVSgMd);
}

void DOCSidebarViewController.startUpdatingRecentlyUsed()()
{
  v1 = OBJC_IVAR___DOCSidebarViewController_recentlyUsedFavoritesSubscriber;
  if (!*(v0 + OBJC_IVAR___DOCSidebarViewController_recentlyUsedFavoritesSubscriber))
  {
    v2 = v0;
    v3 = DOCSidebarViewController.notificationsController.getter();
    if (one-time initialization token for DOCNotificationDidUpdateSmartFolders != -1)
    {
      swift_once();
    }

    v4 = DOCNotificationDidUpdateSmartFolders;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = [objc_opt_self() mainQueue];
    v7 = (*(*v3 + 144))(v4, v16, v6, partial apply for closure #1 in DOCSidebarViewController.startUpdatingRecentlyUsed(), v5);
    v9 = v8;

    outlined destroy of CharacterSet?(v16, &_sypSgMd);
    v10 = (v2 + OBJC_IVAR___DOCSidebarViewController_recentlyUsedNotificationRegistration);
    *v10 = v7;
    v10[1] = v9;

    v11 = [objc_opt_self() sharedManager];
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16[4] = partial apply for closure #2 in DOCSidebarViewController.startUpdatingRecentlyUsed();
    v16[5] = v12;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed (@guaranteed [FPItem]) -> ();
    v16[3] = &block_descriptor_256_0;
    v13 = _Block_copy(v16);

    v14 = [v11 addSubscriber_];
    _Block_release(v13);

    v15 = *(v2 + v1);
    *(v2 + v1) = v14;

    DOCSidebarViewController.updateRecentlyUsedSection()();
  }
}

uint64_t closure #1 in DOCSidebarViewController.startUpdatingLocationsAndServers()(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  v5 = a1;
  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in DOCSidebarViewController.startUpdatingLocationsAndServers()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v133 = Strong;
  v132 = a2;
  v4 = [a2 sharedSources];
  v130 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *v140 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v134 = v5;
    while (1)
    {
      if (v8)
      {
        v10 = MEMORY[0x24C1FC540](v7, v5);
      }

      else
      {
        if (v7 >= *(v9 + 16))
        {
          goto LABEL_21;
        }

        v10 = *(v5 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      type metadata accessor for DOCFileProviderSource();
      v13 = swift_dynamicCastClass();
      if (v13 && (v14 = *(v13 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain)) != 0)
      {
        v15 = v14;
        v16 = [v15 identifier];
        v17 = DOCProviderDomainIDIsSharedServerDomainID();

        if ((v17 & 1) == 0)
        {

LABEL_17:
          v5 = v134;
          goto LABEL_6;
        }

        v18 = [v15 identifier];
        v19 = DOCProviderDomainIDIsDefaultSharedServer();

        if (v19)
        {
          goto LABEL_17;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v5 = v134;
      }

      else
      {
      }

LABEL_6:
      ++v7;
      if (v12 == i)
      {
        v20 = *v140;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_24:

  v21 = OBJC_IVAR___DOCSidebarViewController__mutableSectionsData;
  v22 = *(**(v133 + OBJC_IVAR___DOCSidebarViewController__mutableSectionsData) + 184);

  v23 = v22(4);

  if ((v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
  {
    goto LABEL_158;
  }

  for (j = *(v20 + 16); ; j = __CocoaSet.count.getter())
  {
    v25 = MEMORY[0x277D84F90];
    if (j)
    {
      *v140 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, j & ~(j >> 63), 0);
      if (j < 0)
      {
        __break(1u);
LABEL_171:
        swift_once();
LABEL_166:
        (*((*MEMORY[0x277D85000] & *static DOCUSBStorageKitManager.shared) + 0x60))();
LABEL_167:

        return;
      }

      v135 = v21;
      v26 = 0;
      v25 = *v140;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x24C1FC540](v26, v20);
        }

        else
        {
          v27 = *(v20 + 8 * v26 + 32);
        }

        *v140 = v25;
        v29 = *(v25 + 16);
        v28 = *(v25 + 24);
        if (v29 >= v28 >> 1)
        {
          v31 = v27;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
          v27 = v31;
          v25 = *v140;
        }

        *(v25 + 16) = v29 + 1;
        v30 = v25 + 48 * v29;
        *(v30 + 32) = v27;
        ++v26;
        *(v30 + 40) = 0u;
        *(v30 + 56) = 0u;
        *(v30 + 72) = 1;
      }

      while (j != v26);
      v21 = v135;
    }

    (*(*v23 + 49))(v25);

    v32 = *(**(v21 + v133) + 184);

    v33 = v32(3);

    if (closure #3 in closure #1 in closure #1 in DOCSidebarViewController.startUpdatingLocationsAndServers()(v33, v132, v133))
    {
      v34 = (*((*MEMORY[0x277D85000] & *v133) + 0x550))();
      if (*(v34 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v35 = Hasher._finalize()(), v36 = -1 << *(v34 + 32), v37 = v35 & ~v36, ((*(v34 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) != 0))
      {
        v38 = ~v36;
        while (1)
        {
          v39 = *(*(v34 + 48) + v37);
          if (v39 > 2 && v39 != 4 && v39 != 5)
          {
            break;
          }

          v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v40 & 1) == 0)
          {
            v37 = (v37 + 1) & v38;
            if ((*(v34 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
            {
              continue;
            }
          }

          v41 = v40 ^ 1;
          goto LABEL_48;
        }

LABEL_147:

        v41 = 0;
      }

      else
      {
        v41 = 1;
      }

LABEL_48:

      if (*(v133 + OBJC_IVAR___DOCSidebarViewController__updatingModelForUIChangeCount) <= 0)
      {
        DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(v41 & 1, 1);
      }

      else
      {
        DOCSidebarViewController.markModelDidUpdateDuringUIChange()();
      }
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v42 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
    v43 = v132;
    if ((*(*static DOCUSBFormatting.shared + 128))())
    {
      v44 = [v132 regularSources];
      v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = DOCSidebarViewController.overrideLocationsSectionItemsForUSBErase(sources:)(v45);

      v47 = (v133 + OBJC_IVAR___DOCSidebarViewController_pendingSelectionProviderDomainIdentifier);
      v21 = (v133 + OBJC_IVAR___DOCSidebarViewController_pendingSelectionProviderDomainIdentifier + 8);
      v48 = *v21;
      if (!*v21)
      {
        goto LABEL_118;
      }

      if (v46)
      {

        v20 = 1;
        goto LABEL_119;
      }
    }

    else
    {
      v47 = (v133 + OBJC_IVAR___DOCSidebarViewController_pendingSelectionProviderDomainIdentifier);
      v21 = (v133 + OBJC_IVAR___DOCSidebarViewController_pendingSelectionProviderDomainIdentifier + 8);
      v48 = *v21;
      if (!*v21)
      {
        v46 = 0;
LABEL_118:

        v20 = v46;
LABEL_119:
        if (one-time initialization token for Rename != -1)
        {
          swift_once();
        }

        v95 = type metadata accessor for Logger();
        __swift_project_value_buffer(v95, static Logger.Rename);
        v96 = v133;
        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          *&v138 = v100;
          *v99 = 136315394;
          v101 = *v21;
          *v140 = *v47;
          *&v140[8] = v101;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
          v102 = String.init<A>(describing:)();
          v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, &v138);

          *(v99 + 4) = v104;
          *(v99 + 12) = 1024;
          *(v99 + 14) = v20;
          _os_log_impl(&dword_2493AC000, v97, v98, "[Erase] sidebar sourcesOrderObserver updateBlock 5. pendingSelectionProviderDomainIdentifier: %s didOverrideSidebarItems: %{BOOL}d", v99, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v100);
          MEMORY[0x24C1FE850](v100, -1, -1);
          v105 = v99;
          v43 = v132;
          MEMORY[0x24C1FE850](v105, -1, -1);
        }

        goto LABEL_129;
      }
    }

    v129 = *v47;
    v49 = one-time initialization token for Rename;

    if (v49 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.Rename);

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v140 = v21;
      *v53 = 136315138;

      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v48, v140);

      *(v53 + 4) = v54;
      _os_log_impl(&dword_2493AC000, v51, v52, "[Erase] sidebar sourcesOrderObserver updateBlock 2. pendingSelectionProviderDomainIdentifier: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x24C1FE850](v21, -1, -1);
      MEMORY[0x24C1FE850](v53, -1, -1);
    }

    v55 = [v132 regularSources];
    v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *v140 = v56;
    specialized Array.append<A>(contentsOf:)(v20, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
    v57 = *v140;

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v20 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v140 = v60;
      *v20 = 136315138;
      v61 = MEMORY[0x24C1FB0D0](v57, v130);
      v21 = v62;
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v140);

      *(v20 + 4) = v63;
      _os_log_impl(&dword_2493AC000, v58, v59, "[Erase] sidebar sourcesOrderObserver updateBlock 3. combinedSources: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x24C1FE850](v60, -1, -1);
      MEMORY[0x24C1FE850](v20, -1, -1);
    }

    v23 = &selRef__setLocationsInBrowseTab_;
    v136 = v57 >> 62;
    v64 = v57 >> 62 ? __CocoaSet.count.getter() : *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v65 = v57 & 0xC000000000000001;

    v127 = v133;
    v66 = 0;
    while (v64 != v66)
    {
      if (v65)
      {
        v67 = MEMORY[0x24C1FC540](v66, v57);
      }

      else
      {
        if (v66 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_152;
        }

        v67 = *(v57 + 8 * v66 + 32);
      }

      v20 = v67;
      type metadata accessor for DOCFileProviderSource();
      v68 = swift_dynamicCastClass();

      if (v68)
      {
        v64 = v66;
        break;
      }

      v69 = __OFADD__(v66++, 1);
      if (v69)
      {
        goto LABEL_153;
      }
    }

    v70 = v57 + 32;
    if (v136)
    {
      v71 = __CocoaSet.count.getter();
      if (v64 == v71)
      {
LABEL_79:
        if (v136)
        {
          goto LABEL_127;
        }

        goto LABEL_80;
      }
    }

    else
    {
      v71 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v64 == v71)
      {
        goto LABEL_79;
      }
    }

    if (v57 < 0)
    {
      v84 = v57;
    }

    else
    {
      v84 = v57 & 0xFFFFFFFFFFFFFF8;
    }

    v128 = v84;
    v131 = v71;
LABEL_95:
    if (v65)
    {
      v85 = MEMORY[0x24C1FC540](v64, v57);
    }

    else
    {
      if ((v64 & 0x8000000000000000) != 0)
      {
        goto LABEL_154;
      }

      if (v64 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_155;
      }

      v85 = *(v70 + 8 * v64);
    }

    v20 = v85;
    v21 = type metadata accessor for DOCFileProviderSource();
    v86 = swift_dynamicCastClass();
    if (!v86)
    {
      goto LABEL_176;
    }

    v87 = *(v86 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    if (v87)
    {
      v88 = [v87 v23[466]];
      v89 = v48;
      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v91;

      v92._countAndFlagsBits = v90;
      v48 = v89;
      v92._object = v23;
      LOBYTE(v88) = String.hasPrefix(_:)(v92);

      if ((v88 & 1) == 0)
      {
        if (!v136)
        {
          goto LABEL_103;
        }

        goto LABEL_106;
      }

      v70 = v57 + 32;
      if (v136)
      {
        goto LABEL_127;
      }

LABEL_80:
      if (v64 == *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_128;
      }

      goto LABEL_81;
    }

    if (!v136)
    {
LABEL_103:
      v20 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v70 = v57 + 32;
      if (v64 != v20)
      {
        goto LABEL_110;
      }

      goto LABEL_156;
    }

LABEL_106:
    v23 = v128;
    v70 = v57 + 32;
    if (v64 != __CocoaSet.count.getter())
    {
      break;
    }

LABEL_157:
    __break(1u);
LABEL_158:
    ;
  }

  v20 = __CocoaSet.count.getter();
  while (1)
  {
LABEL_110:
    v69 = __OFADD__(v64++, 1);
    if (v69)
    {
      __break(1u);
      goto LABEL_147;
    }

    if (v64 == v20)
    {
      break;
    }

    if (v65)
    {
      v93 = MEMORY[0x24C1FC540](v64, v57);
    }

    else
    {
      if ((v64 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      if (v64 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_149;
      }

      v93 = *(v70 + 8 * v64);
    }

    v94 = v93;
    v23 = swift_dynamicCastClass();

    if (v23)
    {
      goto LABEL_94;
    }
  }

  v64 = v20;
LABEL_94:
  v23 = &selRef__setLocationsInBrowseTab_;
  if (v64 != v131)
  {
    goto LABEL_95;
  }

  v64 = v131;
  if (!v136)
  {
    goto LABEL_80;
  }

LABEL_127:
  if (v64 == __CocoaSet.count.getter())
  {
LABEL_128:
    swift_bridgeObjectRelease_n();

    v43 = v132;
    v42 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
    goto LABEL_129;
  }

LABEL_81:
  if (v65)
  {
    v72 = MEMORY[0x24C1FC540](v64, v57);
    goto LABEL_85;
  }

  if ((v64 & 0x8000000000000000) == 0)
  {
    if (v64 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_175;
    }

    v72 = *(v70 + 8 * v64);
LABEL_85:
    v64 = v72;
    v43 = v132;
    type metadata accessor for DOCFileProviderSource();
    v73 = swift_dynamicCastClass();

    if (!v73)
    {
      goto LABEL_177;
    }

    *v140 = v73;
    memset(&v140[8], 0, 32);
    v140[40] = 1;

    v74 = v64;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v137 = v78;
      *v77 = 136315394;
      v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v48, &v137);

      *(v77 + 4) = v79;
      *(v77 + 12) = 2080;
      v138 = *v140;
      v139[0] = *&v140[16];
      *(v139 + 9) = *&v140[25];
      v80 = v74;
      v81 = String.init<A>(describing:)();
      v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v137);

      *(v77 + 14) = v83;
      _os_log_impl(&dword_2493AC000, v75, v76, "[Erase] sidebar sourcesOrderObserver updateBlock 4. found source matching pendingSelectionProviderDomainIdentifier: %s calling didSelectItem with sidebar item: %s", v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v78, -1, -1);
      MEMORY[0x24C1FE850](v77, -1, -1);
    }

    else
    {
    }

    v42 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
    v106 = *(v127 + OBJC_IVAR___DOCSidebarViewController_locationSelection);

    v113 = DOCSidebarItem.representedLocation.getter(v107, v108, v109, v110, v111, v112);
    v114 = *(v106 + 24);
    *(v106 + 24) = v113;

    v115 = (*((*MEMORY[0x277D85000] & *v127) + 0x488))();
    v138 = *v140;
    v139[0] = *&v140[16];
    *(v139 + 9) = *&v140[25];
    (*(*v115 + 312))(&v138, 0);

LABEL_129:
    v23 = [v43 v42[304]];
    v116 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *&v138 = MEMORY[0x277D84F90];
    if (v116 >> 62)
    {
      v117 = __CocoaSet.count.getter();
      if (!v117)
      {
LABEL_160:
        v125 = MEMORY[0x277D84F90];
LABEL_161:

        if (v125 < 0 || (v125 & 0x4000000000000000) != 0)
        {
          v126 = __CocoaSet.count.getter();
        }

        else
        {
          v126 = *(v125 + 16);
        }

        if (v126 > 0)
        {
          if (one-time initialization token for shared == -1)
          {
            goto LABEL_166;
          }

          goto LABEL_171;
        }

        goto LABEL_167;
      }
    }

    else
    {
      v117 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v117)
      {
        goto LABEL_160;
      }
    }

    v118 = 0;
    v21 = (v116 & 0xC000000000000001);
    while (1)
    {
      if (v21)
      {
        v119 = MEMORY[0x24C1FC540](v118, v116);
      }

      else
      {
        if (v118 >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_151;
        }

        v119 = *(v116 + 8 * v118 + 32);
      }

      v120 = v119;
      v121 = v118 + 1;
      if (__OFADD__(v118, 1))
      {
        break;
      }

      type metadata accessor for DOCFileProviderSource();
      v122 = swift_dynamicCastClass();
      if (v122 && (v123 = *(v122 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain)) != 0 && (v23 = v123, v124 = [(SEL *)v23 identifier], v20 = DOCProviderDomainIDIsExternalDevice(), v23, v124, (v20 & 1) != 0))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v23 = *(v138 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v118;
      if (v121 == v117)
      {
        v125 = v138;
        goto LABEL_161;
      }
    }

LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:

  __break(1u);
LABEL_177:

  __break(1u);
}

uint64_t closure #3 in closure #1 in closure #1 in DOCSidebarViewController.startUpdatingLocationsAndServers()(uint64_t a1, id a2, void *a3)
{
  v3 = [a2 regularSources];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    v8 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  *&v71 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    goto LABEL_51;
  }

  v7 = 0;
  v8 = v71;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C1FC540](v7, v4);
    }

    else
    {
      v9 = *(v4 + 8 * v7 + 32);
    }

    *&v71 = v8;
    v11 = *(v8 + 16);
    v10 = *(v8 + 24);
    if (v11 >= v10 >> 1)
    {
      v13 = v9;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      v9 = v13;
      v8 = v71;
    }

    *(v8 + 16) = v11 + 1;
    v12 = v8 + 48 * v11;
    *(v12 + 32) = v9;
    ++v7;
    *(v12 + 40) = 0u;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 1;
  }

  while (v5 != v7);

LABEL_14:
  v69 = v8;
  v15 = *(v8 + 16);
  if (v15)
  {
    v16 = v8 + 32;

    v17 = 0;
    v61 = v8;
    v53 = v8 + 32;
    v54 = v15;
    while (v17 < *(v8 + 16))
    {
      v18 = v16 + 48 * v17;
      if (*(v18 + 40) == 1)
      {
        v60 = v17;
        v57 = *(v18 + 16);
        v58 = *(v18 + 8);
        v55 = *(v18 + 32);
        v56 = *(v18 + 24);
        v19 = *((*MEMORY[0x277D85000] & *a3) + 0x410);
        v59 = *v18;
        v64 = *v18;
        result = v19();
        v20 = result;
        v21 = 0;
        v22 = result + 56;
        v23 = 1 << *(result + 32);
        if (v23 < 64)
        {
          v24 = ~(-1 << v23);
        }

        else
        {
          v24 = -1;
        }

        v25 = v24 & *(result + 56);
        v26 = (v23 + 63) >> 6;
        v66 = result;
        while (v25)
        {
LABEL_30:
          v28 = __clz(__rbit64(v25));
          v25 &= v25 - 1;
          v29 = (*(v20 + 48) + 48 * (v28 | (v21 << 6)));
          v31 = *v29;
          v30 = v29[1];
          *&v72[9] = *(v29 + 25);
          v71 = v31;
          *v72 = v30;
          if (v72[24] == 5)
          {
            v32 = *&v72[8];
            v68._countAndFlagsBits = *v72;
            outlined init with copy of DOCSidebarItem(&v71, &v68._object);

            v33 = [v64 identifier];
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v34._countAndFlagsBits = v68._countAndFlagsBits;
            v34._object = v32;
            LOBYTE(v33) = String.hasSuffix(_:)(v34);

            if (v33)
            {
              v35 = (*((*MEMORY[0x277D85000] & *a3) + 0x420))(&v68._object);
              specialized Set._Variant.remove(_:)(v70);
              outlined destroy of CharacterSet?(v70, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
              v35(&v68._object, 0);
            }

            result = outlined destroy of DOCSidebarItem(&v71);
            v8 = v61;
            v20 = v66;
          }
        }

        while (1)
        {
          v27 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v27 >= v26)
          {
            outlined consume of DOCSidebarItem(v59, v58, v57, v56, v55, 1u);

            v16 = v53;
            v15 = v54;
            v17 = v60;
            goto LABEL_17;
          }

          v25 = *(v22 + 8 * v27);
          ++v21;
          if (v25)
          {
            v21 = v27;
            goto LABEL_30;
          }
        }

        __break(1u);
        goto LABEL_49;
      }

LABEL_17:
      if (++v17 == v15)
      {

        goto LABEL_34;
      }
    }
  }

  else
  {
LABEL_34:
    v36 = (*((*MEMORY[0x277D85000] & *a3) + 0x410))(v14);
    v37 = v36 + 56;
    v38 = 1 << *(v36 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & *(v36 + 56);
    v41 = (v38 + 63) >> 6;
    v63 = v36;

    v42 = 0;
    v43 = MEMORY[0x277D84F90];
    if (v40)
    {
      goto LABEL_41;
    }

    while (1)
    {
      v44 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v44 >= v41)
      {

        specialized Array.append<A>(contentsOf:)(v43);
        (*(*a1 + 392))(v69);

        return 1;
      }

      v40 = *(v37 + 8 * v44);
      ++v42;
      if (v40)
      {
        v42 = v44;
        do
        {
LABEL_41:
          v45 = *(v63 + 48) + 48 * (__clz(__rbit64(v40)) | (v42 << 6));
          v46 = *(v45 + 24);
          v47 = *(v45 + 32);
          v48 = *(v45 + 40);
          v67 = *(v45 + 8);
          v68._countAndFlagsBits = *v45;
          v65 = *(v45 + 16);
          outlined copy of DOCSidebarItem(*v45, v67, v65, v46, v47, v48);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 16) + 1, 1, v43);
            v43 = result;
          }

          v50 = *(v43 + 16);
          v49 = *(v43 + 24);
          if (v50 >= v49 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v43);
            v43 = result;
          }

          v40 &= v40 - 1;
          *(v43 + 16) = v50 + 1;
          v51 = v43 + 48 * v50;
          *(v51 + 32) = v68._countAndFlagsBits;
          *(v51 + 40) = v67;
          *(v51 + 48) = v65;
          *(v51 + 56) = v46;
          *(v51 + 64) = v47;
          *(v51 + 72) = v48;
        }

        while (v40);
      }
    }

LABEL_49:
    __break(1u);
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

void closure #2 in DOCSidebarViewController.startUpdatingLocationsAndServers()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x277D85000] & *Strong) + 0x520))();
    [v2 invokeUpdateBlock];
  }
}

Swift::Int DOCSidebarViewController.MutationReloadRequest.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  return Hasher._finalize()();
}

Swift::Void __swiftcall DOCSidebarViewController.markModelDidUpdateDuringUIChange()()
{
  v1 = v0;
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.Sidebar);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000249BEE680, &v7);
    _os_log_impl(&dword_2493AC000, v3, v4, "%s: Got update while freezing.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR___DOCSidebarViewController_modelDidUpdateDuringUIChange) = 1;
}

Swift::Void __swiftcall DOCSidebarViewController.beginDeferReloadsForUIChange(logID:)(Swift::String logID)
{
  object = logID._object;
  countAndFlagsBits = logID._countAndFlagsBits;
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.Sidebar);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000249BEE6B0, &v8);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v8);
    _os_log_impl(&dword_2493AC000, v4, v5, "%s: [%s] updatingModelForUIChangeCount++", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v6, -1, -1);
  }

  DOCSidebarViewController.updateModelForUIChangeCount(by:logID:reloadShouldBeImmediate:)(1, countAndFlagsBits, object, 0);
}

void DOCSidebarViewController.updateModelForUIChangeCount(by:logID:reloadShouldBeImmediate:)(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v53) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v14, v15);
  v19 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR___DOCSidebarViewController__updatingModelForUIChangeCount;
  v21 = *&v5[OBJC_IVAR___DOCSidebarViewController__updatingModelForUIChangeCount];
  v22 = v21 + a1;
  if (__OFADD__(v21, a1))
  {
    __break(1u);
  }

  else
  {
    v49 = v17;
    v50 = v16;
    v51 = v10;
    *&v5[OBJC_IVAR___DOCSidebarViewController__updatingModelForUIChangeCount] = v22;
    if (one-time initialization token for Sidebar == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.Sidebar);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  v26 = os_log_type_enabled(v24, v25);
  v52 = v9;
  v48 = v13;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315650;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ELL, 0x8000000249BEF030, aBlock);
    *(v27 + 12) = 2080;
    *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, aBlock);
    *(v27 + 22) = 2048;
    *(v27 + 24) = v22;
    _os_log_impl(&dword_2493AC000, v24, v25, "%s: [%s] Setting updatingModelForUIChangeCount to %ld.", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v28, -1, -1);
    MEMORY[0x24C1FE850](v27, -1, -1);
  }

  if (*&v5[v20] <= 0)
  {
    v29 = OBJC_IVAR___DOCSidebarViewController_modelDidUpdateDuringUIChange;
    if (v5[OBJC_IVAR___DOCSidebarViewController_modelDidUpdateDuringUIChange] == 1)
    {
      if ([v5 isViewLoaded])
      {
        if ([objc_opt_self() areAnimationsEnabled] && objc_msgSend(v5, sel_doc_hasAppearedOrIsAppearing))
        {
          v30 = [v5 view];
          if (!v30)
          {
            __break(1u);
            return;
          }

          v31 = v30;
          v32 = [v30 window];

          if (v32)
          {

            if ([v5 doc_isAppearing])
            {
              v33 = [v5 navigationController];
              if (v33)
              {
                v34 = v33;
                v35 = [v33 topViewController];
                if (v35)
                {
                  v36 = v35;
                  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
                  v37 = v5;
                  v38 = static NSObject.== infix(_:_:)();

                  v39 = v38 ^ 1;
LABEL_17:
                  v40 = swift_allocObject();
                  *(v40 + 16) = v5;
                  *(v40 + 24) = a2;
                  *(v40 + 32) = a3;
                  v41 = v39 & 1;
                  *(v40 + 40) = v41;
                  if (v53)
                  {

                    closure #1 in DOCSidebarViewController.updateModelForUIChangeCount(by:logID:reloadShouldBeImmediate:)(v5, a2, a3, v41);
                  }

                  else
                  {
                    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);

                    v42 = v5;
                    v43 = static OS_dispatch_queue.main.getter();
                    aBlock[4] = partial apply for closure #1 in DOCSidebarViewController.updateModelForUIChangeCount(by:logID:reloadShouldBeImmediate:);
                    aBlock[5] = v40;
                    aBlock[0] = MEMORY[0x277D85DD0];
                    aBlock[1] = 1107296256;
                    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
                    aBlock[3] = &block_descriptor_236_0;
                    v53 = _Block_copy(aBlock);

                    static DispatchQoS.unspecified.getter();
                    aBlock[0] = MEMORY[0x277D84F90];
                    v47[1] = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_10(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
                    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
                    v44 = v48;
                    v45 = v52;
                    dispatch thunk of SetAlgebra.init<A>(_:)();
                    v46 = v53;
                    MEMORY[0x24C1FB9A0](0, v19, v44, v53);
                    _Block_release(v46);

                    (*(v51 + 8))(v44, v45);
                    (*(v49 + 8))(v19, v50);
                  }

                  v5[v29] = 0;
                  return;
                }
              }
            }

            v39 = 1;
            goto LABEL_17;
          }
        }

        v39 = 0;
        goto LABEL_17;
      }
    }
  }
}

Swift::Void __swiftcall DOCSidebarViewController.endDeferReloadsForUIChange(logID:reloadImmediately:)(Swift::String logID, Swift::Bool reloadImmediately)
{
  object = logID._object;
  countAndFlagsBits = logID._countAndFlagsBits;
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.Sidebar);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x8000000249BEE6E0, &v10);
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v10);
    _os_log_impl(&dword_2493AC000, v6, v7, "%s: [%s] updatingModelForUIChangeCount--", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  DOCSidebarViewController.updateModelForUIChangeCount(by:logID:reloadShouldBeImmediate:)(-1, countAndFlagsBits, object, reloadImmediately);
}

void closure #1 in DOCSidebarViewController.updateModelForUIChangeCount(by:logID:reloadShouldBeImmediate:)(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (*(a1 + OBJC_IVAR___DOCSidebarViewController__updatingModelForUIChangeCount) <= 0)
  {
    v14[9] = v4;
    v14[10] = v5;
    if (one-time initialization token for Sidebar != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.Sidebar);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14[0] = v13;
      *v12 = 136315394;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ELL, 0x8000000249BEF030, v14);
      *(v12 + 12) = 2080;
      *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v14);
      _os_log_impl(&dword_2493AC000, v10, v11, "%s: [%s] Model no longer updating but modelDidUpdateDuringUIChange == true, reloading sidebar.", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v13, -1, -1);
      MEMORY[0x24C1FE850](v12, -1, -1);
    }

    DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(a4 & 1, 1);
  }
}

void closure #1 in DOCSidebarViewController.startUpdatingFavorites()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(**(Strong + OBJC_IVAR___DOCSidebarViewController__mutableSectionsData) + 184);

    v3 = v2(2);

    if (closure #1 in closure #1 in DOCSidebarViewController.startUpdatingFavorites()(v3, v1))
    {
      v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x550))();
      if (*(v4 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v5 = Hasher._finalize()(), v6 = -1 << *(v4 + 32), v7 = v5 & ~v6, ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
      {
        v8 = ~v6;
        while (*(*(v4 + 48) + v7) != 2)
        {
          v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v9 & 1) == 0)
          {
            v7 = (v7 + 1) & v8;
            if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
            {
              continue;
            }
          }

          v10 = v9 ^ 1;
          goto LABEL_11;
        }

        v10 = 0;
      }

      else
      {
        v10 = 1;
      }

LABEL_11:

      if (*(v1 + OBJC_IVAR___DOCSidebarViewController__updatingModelForUIChangeCount) <= 0)
      {
        DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(v10 & 1, 1);
      }

      else
      {
        DOCSidebarViewController.markModelDidUpdateDuringUIChange()();
      }
    }
  }
}

char *closure #1 in closure #1 in DOCSidebarViewController.startUpdatingFavorites()(unsigned __int8 *a1, void *a2)
{
  v4 = (*a1 + 312);
  v5 = *v4;
  v6 = v4;
  v7 = *((*v4)() + 16);

  v8 = objc_opt_self();
  v9 = [v8 sharedManager];
  v10 = [v8 sharedManager];
  v11 = [v10 favoritedLocations];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    v13 = __CocoaSet.count.getter();
    v35 = v7;
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_13:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v35 = v7;
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_3:
  v36 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 & ~(v13 >> 63), 0);
  if (v13 < 0)
  {
    __break(1u);
    return result;
  }

  v31 = v6;
  v32 = v5;
  v33 = v9;
  v34 = a2;
  v15 = 0;
  v16 = v36;
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x24C1FC540](v15, v12);
    }

    else
    {
      v17 = *(v12 + 8 * v15 + 32);
    }

    v37 = v16;
    v19 = *(v16 + 16);
    v18 = *(v16 + 24);
    if (v19 >= v18 >> 1)
    {
      v21 = v17;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      v17 = v21;
      v16 = v37;
    }

    *(v16 + 16) = v19 + 1;
    v20 = v16 + 48 * v19;
    *(v20 + 32) = v17;
    ++v15;
    *(v20 + 40) = 0u;
    *(v20 + 56) = 0u;
    *(v20 + 72) = 0;
  }

  while (v13 != v15);

  a2 = v34;
LABEL_14:
  (*(*a1 + 392))(v16);

  v23 = OBJC_IVAR___DOCSidebarViewController_hasSeenInitiallyGatheredFavorites;
  if (*(a2 + OBJC_IVAR___DOCSidebarViewController_hasSeenInitiallyGatheredFavorites) == 1 && v35 == 0)
  {
    v25 = *((v5)(v22) + 16);

    if (v25)
    {
      v26 = *(**(a2 + OBJC_IVAR___DOCSidebarViewController__mutableSectionsData) + 184);
      v27 = a1[16];

      v28 = v26(v27);

      (*(*v28 + 192))(1);
      DOCSidebarViewController.reflectCurrentLocationToSelectedInSidebar(scrollToVisible:forAppearance:)(0, 0);
      v29 = (*((*MEMORY[0x277D85000] & *a2) + 0x248))();
      (*(*v29 + 152))(v29);
    }
  }

  v30 = [v9 isGathering];

  *(a2 + v23) = v30 ^ 1;
  return 1;
}

uint64_t DOCSidebarViewController.changeExpanded(ofSection:to:reload:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *(**(v3 + OBJC_IVAR___DOCSidebarViewController__mutableSectionsData) + 184);

  v9 = v8(a1);

  v10 = (*(*v9 + 192))(a2);
  if (a2)
  {
    DOCSidebarViewController.reflectCurrentLocationToSelectedInSidebar(scrollToVisible:forAppearance:)(0, 0);
  }

  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v3) + 0x248))(v10);
  (*(*v12 + 152))(v12);

  if (a3)
  {
    v14 = (*((*v11 & *v3) + 0x550))(v13);
    v15 = specialized Set.contains(_:)(a1, v14);

    if (*(v4 + OBJC_IVAR___DOCSidebarViewController__updatingModelForUIChangeCount) <= 0)
    {
      DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)((v15 & 1) == 0, 1);
    }

    else
    {
      DOCSidebarViewController.markModelDidUpdateDuringUIChange()();
    }
  }
}

BOOL closure #1 in DOCSidebarViewController.startUpdatingTags()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    v2 = *(**(Strong + OBJC_IVAR___DOCSidebarViewController__mutableSectionsData) + 184);

    v3 = v2(5);

    if (closure #1 in closure #1 in DOCSidebarViewController.startUpdatingTags()(v3))
    {
      v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x550))();
      if (*(v4 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v5 = Hasher._finalize()(), v6 = -1 << *(v4 + 32), v7 = v5 & ~v6, ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
      {
        v8 = ~v6;
        while (1)
        {
          v9 = *(*(v4 + 48) + v7);
          if (v9 > 4)
          {
            break;
          }

          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v10 & 1) == 0)
          {
            v7 = (v7 + 1) & v8;
            if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
            {
              continue;
            }
          }

          v11 = v10 ^ 1;
          goto LABEL_11;
        }

        v11 = 0;
      }

      else
      {
        v11 = 1;
      }

LABEL_11:

      if (*(v1 + OBJC_IVAR___DOCSidebarViewController__updatingModelForUIChangeCount) <= 0)
      {
        DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(v11 & 1, 1);
      }

      else
      {
        DOCSidebarViewController.markModelDidUpdateDuringUIChange()();
      }
    }
  }

  return v1 == 0;
}

char *closure #1 in closure #1 in DOCSidebarViewController.startUpdatingTags()(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 userTags];

  v4 = [v3 array];
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = specialized _arrayForceCast<A, B>(_:)(v5);

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

    v10 = MEMORY[0x277D84F90];
LABEL_14:
    (*(*a1 + 392))(v10);

    return 1;
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  v17 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v16 = a1;
    v9 = 0;
    v10 = v17;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x24C1FC540](v9, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v9 + 32);
      }

      v18 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        v15 = v11;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v11 = v15;
        v10 = v18;
      }

      *(v10 + 16) = v13 + 1;
      v14 = v10 + 48 * v13;
      *(v14 + 32) = v11;
      ++v9;
      *(v14 + 40) = 0u;
      *(v14 + 56) = 0u;
      *(v14 + 72) = 2;
    }

    while (v7 != v9);

    a1 = v16;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in DOCSidebarViewController.startUpdatingTags()(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v18[-v7 - 8];
  result = Notification.userInfo.getter();
  if (result)
  {
    v10 = result;
    v17 = *MEMORY[0x277D061C8];
    v11 = v17;
    type metadata accessor for DOCTagRegistryChangeKey(0);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_10(&lazy protocol witness table cache variable for type DOCTagRegistryChangeKey and conformance DOCTagRegistryChangeKey, type metadata accessor for DOCTagRegistryChangeKey);
    v12 = v11;
    AnyHashable.init<A>(_:)();
    if (*(v10 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v18), (v14 & 1) != 0))
    {
      outlined init with copy of Any(*(v10 + 56) + 32 * v13, v19);
      outlined destroy of AnyHashable(v18);

      result = swift_dynamicCast();
      if ((result & 1) != 0 && v17 == 1)
      {
        v15 = type metadata accessor for Notification();
        v16 = *(v15 - 8);
        (*(v16 + 16))(v8, a2, v15);
        (*(v16 + 56))(v8, 0, 1, v15);
        a3(v8);
        return outlined destroy of CharacterSet?(v8, &_s10Foundation12NotificationVSgMd);
      }
    }

    else
    {

      return outlined destroy of AnyHashable(v18);
    }
  }

  return result;
}

void closure #1 in DOCSidebarViewController.startUpdatingRecentlyUsed()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    DOCSidebarViewController.updateRecentlyUsedSection()();
  }
}

void closure #2 in DOCSidebarViewController.startUpdatingRecentlyUsed()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    DOCSidebarViewController.updateRecentlyUsedSection()();
  }
}

char *closure #1 in DOCSidebarViewController.updateRecentlyUsedSection()(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v38 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v37 = a2;
    v5 = v38;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        v8 = MEMORY[0x24C1FC540](v7, a1);
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v5;
        v12 = *(v5 + 16);
        v11 = *(v5 + 24);
        if (v12 >= v11 >> 1)
        {
          v36 = v9;
          v14 = v10;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v9 = v36;
          v10 = v14;
          v5 = v39;
        }

        ++v7;
        *(v5 + 16) = v12 + 1;
        v13 = v5 + 48 * v12;
        *(v13 + 32) = v8;
        *(v13 + 40) = v9;
        *(v13 + 56) = 0;
        *(v13 + 64) = 0;
        *(v13 + 48) = v10;
        *(v13 + 72) = 3;
      }

      while (v4 != v7);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
        v40 = v5;
        v21 = *(v5 + 16);
        v20 = *(v5 + 24);
        v22 = v16;
        if (v21 >= v20 >> 1)
        {
          v24 = v22;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v22 = v24;
          v5 = v40;
        }

        *(v5 + 16) = v21 + 1;
        v23 = v5 + 48 * v21;
        *(v23 + 32) = v22;
        *(v23 + 40) = v17;
        *(v23 + 56) = 0;
        *(v23 + 64) = 0;
        *(v23 + 48) = v19;
        *(v23 + 72) = 3;
        ++v15;
        --v4;
      }

      while (v4);
    }

    a2 = v37;
  }

  v25 = *(**(a2 + OBJC_IVAR___DOCSidebarViewController__mutableSectionsData) + 184);

  v26 = 1;
  v27 = v25(1);

  (*(*v27 + 392))(v5);

  v29 = (*((*MEMORY[0x277D85000] & *a2) + 0x550))(v28);
  if (*(v29 + 16))
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v30 = Hasher._finalize()();
    v31 = -1 << *(v29 + 32);
    v32 = v30 & ~v31;
    if ((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
    {
      v33 = a2;
      v34 = ~v31;
      while (*(*(v29 + 48) + v32) > 2u || !*(*(v29 + 48) + v32) || *(*(v29 + 48) + v32) == 2)
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v35 & 1) == 0)
        {
          v32 = (v32 + 1) & v34;
          if ((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
          {
            continue;
          }
        }

        v26 = v35 ^ 1;
        goto LABEL_25;
      }

      v26 = 0;
LABEL_25:
      a2 = v33;
    }

    else
    {
      v26 = 1;
    }
  }

  if (*(a2 + OBJC_IVAR___DOCSidebarViewController__updatingModelForUIChangeCount) <= 0)
  {
    DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(v26 & 1, 1);
  }

  else
  {
    DOCSidebarViewController.markModelDidUpdateDuringUIChange()();
  }
}

uint64_t sidebarItems #1 (section:) in DOCSidebarViewController.selectNewlyAddedSource(with:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 72))(0, ObjectType, a2);
  v5 = result;
  v6 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v7 = *(result + 16);
  if (v7)
  {
    v8 = 0;
    v9 = -v7;
    do
    {
      v10 = *(v5 + 16);
      if (v8 > v10)
      {
        v10 = v8;
      }

      v11 = -v10;
      v12 = (v5 + 72 + 48 * v8++);
      while (1)
      {
        if (v11 + v8 == 1)
        {
          __break(1u);
          return result;
        }

        if (*v12 == 1)
        {
          v13 = *(v12 - 5);
          type metadata accessor for DOCFileProviderSource();
          result = swift_dynamicCastClass();
          if (result)
          {
            break;
          }
        }

        ++v8;
        v12 += 48;
        if (v9 + v8 == 1)
        {
          goto LABEL_13;
        }
      }

      MEMORY[0x24C1FB090](v13);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v14;
    }

    while (v9 + v8);
  }

LABEL_13:

  return v6;
}

void DOCSidebarViewController.effectiveAppearanceDidChange(_:)(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCSidebarViewController(0);
  objc_msgSendSuper2(&v3, sel_effectiveAppearanceDidChange_, a1);
  if ([v1 isViewLoaded])
  {
    DOCSidebarViewController.updateBackgroundColor()();
  }
}

void DOCSidebarViewController.updateBackgroundColor()()
{
  v1 = [v0 effectiveAppearance];
  if (v1)
  {
    v6 = v1;
    v2 = [objc_msgSend(*&v0[OBJC_IVAR___DOCSidebarViewController_configuration] sourceListUI)];
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = [v6 backgroundColor];
      v7.receiver = v0;
      v7.super_class = type metadata accessor for DOCSidebarViewController(0);
      v4 = objc_msgSendSuper2(&v7, sel_collectionView);
      if (v4)
      {
        v5 = v4;
        type metadata accessor for DOCSidebarCollectionView();
        [swift_dynamicCastClassUnconditional() setBackgroundColor_];
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

id UIViewController.enclosingSplitBrowserViewController.getter()
{
  result = [v0 splitViewController];
  if (result)
  {
    v2 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall DOCSidebarViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DOCSidebarViewController(0);
  v16.receiver = v0;
  v16.super_class = v3;
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  [v0 setClearsSelectionOnViewWillAppear_];
  DOCSidebarViewController.updateBackgroundColor()();
  v15.receiver = v0;
  v15.super_class = v3;
  v4 = objc_msgSendSuper2(&v15, sel_collectionView);
  if (!v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v5 = v4;
  type metadata accessor for DOCSidebarCollectionView();
  [v1 setContentScrollView:swift_dynamicCastClassUnconditional() forEdge:15];

  if ((v1[OBJC_IVAR___DOCSidebarViewController_isObservingSectionDataProviders] & 1) == 0)
  {
    v1[OBJC_IVAR___DOCSidebarViewController_isObservingSectionDataProviders] = 1;
    DOCSidebarViewController.startUpdatingLocationsAndServers()();
    DOCSidebarViewController.startUpdatingFavorites()();
    DOCSidebarViewController.startUpdatingTags()();
    if ([*&v1[OBJC_IVAR___DOCSidebarViewController_configuration] isPickerUI])
    {
      DOCSidebarViewController.startUpdatingRecentlyUsed()();
    }
  }

  v13 = 1;
  v14 = 0;
  UIViewController.registerForTabSwitcherTraitChanges<A>(options:_:)(&v13, specialized closure #1 in DOCSidebarViewController.viewDidLoad(), 0, ObjectType);
  swift_unknownObjectRelease();
  v12.receiver = v1;
  v12.super_class = v3;
  v6 = objc_msgSendSuper2(&v12, sel_collectionView);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = swift_dynamicCastClassUnconditional();
  (*((*MEMORY[0x277D85000] & *v8) + 0x88))(1);

  v11.receiver = v1;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_collectionView);
  if (v9)
  {
    v10 = v9;
    [v9 setDropDelegate_];
    [v10 setSpringLoaded_];
  }

  DOCSidebarViewController.configureLayout()();
  DOCSidebarViewController.configureDataSource()();
  DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(0, 1);
}

Swift::Void __swiftcall DOCSidebarViewController.viewDidLayoutSubviews()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DOCSidebarViewController(0);
  v17.receiver = v0;
  v17.super_class = v9;
  objc_msgSendSuper2(&v17, sel_viewDidLayoutSubviews);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in DOCSidebarViewController.viewDidLayoutSubviews();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_25_2;
  v12 = _Block_copy(aBlock);
  v13 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_10(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v8, v4, v12);
  _Block_release(v12);

  (*(v15 + 8))(v4, v1);
  (*(v5 + 8))(v8, v14);
}

Swift::Void __swiftcall DOCSidebarViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for DOCSidebarViewController(0);
  v3 = objc_msgSendSuper2(&v18, sel_traitCollectionDidChange_, isa);
  (*((*MEMORY[0x277D85000] & *v1) + 0x3B8))(v3);
  v4 = [v1 traitCollection];
  if (one-time initialization token for userInterfaceStyle != -1)
  {
    swift_once();
  }

  v14 = static UITraitCollection.Traits.userInterfaceStyle;
  v15 = qword_27EEE9CA8;
  v5 = one-time initialization token for sourceOutlineStyle;

  if (v5 != -1)
  {
    swift_once();
  }

  v16 = static UITraitCollection.Traits.sourceOutlineStyle;
  v17 = qword_27EEE9D08;

  _StringGuts.grow(_:)(18);

  v13[0] = 0x6172287469617254;
  v13[1] = 0xEF3A65756C615677;
  v12[0] = 0;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v6);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v7 = *v13;
  v13[0] = 0;
  *&v13[1] = v7;

  specialized OptionSet<>.insert(_:)(v12, v14, *(&v14 + 1), v15);

  v9 = *(&v16 + 1);
  v8 = v17;
  v10 = v16;

  specialized OptionSet<>.insert(_:)(v12, v10, v9, v8);

  swift_arrayDestroy();
  v11 = UITraitCollection.doc_hasChanged(_:comparesTo:)(v13, isa);

  if (v11)
  {
    DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(1, 1);
  }
}

Swift::Void __swiftcall DOCSidebarViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for DOCSidebarViewController(0);
  objc_msgSendSuper2(&v8, sel_viewWillAppear_, a1);
  DOCSidebarViewController.updateNavigationButtons()();
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 setToolbarHidden:1 animated:0];
  }

  v5 = objc_opt_self();
  v6 = [*&v1[OBJC_IVAR___DOCSidebarViewController_configuration] sceneIdentifier];
  v7 = [v5 globalTabbedBrowserControllerForIdentifier_];

  [v7 updateTabBarVisibility];
}

Swift::Void __swiftcall DOCSidebarViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DOCSidebarViewController(0);
  v3 = objc_msgSendSuper2(&v4, sel_viewIsAppearing_, a1);
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x358))(v3))
  {
    DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(a1, 1);
  }

  DOCSidebarViewController.reflectCurrentLocationToSelectedInSidebar(scrollToVisible:forAppearance:)(0, 1);
  if (DOCSidebarViewController.currentPresentationContext.getter() == 2)
  {
    DOCSidebarViewController.performAlongsideTransitionDeselection(animated:coordinator:)(a1, [v1 transitionCoordinator]);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall DOCSidebarViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCSidebarViewController(0);
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1);
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x390))(0);
  if ((*((*v3 & *v1) + 0x358))(v4))
  {
    DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(0, 1);
  }
}

id DOCSidebarViewController._multitaskingDragExclusionRects()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1E8))();
  if (v1)
  {
    v2 = [v1 sidebarViewControllerWithIsCollapsed_];
    swift_unknownObjectRelease();
    if (v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  [result bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v13 = result;
  [result directionalLayoutMargins];
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [v0 traitCollection];
  v21 = [v20 layoutDirection];

  if (v21 == 1)
  {
    v22 = v19;
  }

  else
  {
    v22 = v17;
  }

  v23 = UIEdgeInsetsInsetRect(v6, v8, v10, v12, v15, v22);
  v27 = [objc_opt_self() valueWithCGRect_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  result = swift_allocObject();
  *(result + 1) = xmmword_249BA0290;
  *(result + 4) = v27;
  return result;
}

id DOCSidebarViewController.isCollapsed.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1E8))();
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 sidebarViewControllerWithIsCollapsed_];
  swift_unknownObjectRelease();
  return v2;
}

Swift::Void __swiftcall DOCSidebarViewController.updateNavigationBackButtonIfNecessary()()
{
  v1 = [v0 navigationItem];
  DOCSidebarViewController.titleSettings.getter();
  v3 = v2;
  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x24C1FAD20](v3, v5);
  }

  else
  {
    v6 = 0;
  }

  [v1 setBackButtonTitle_];
}

id DOCSidebarViewController.titleSettings.getter()
{
  result = _DocumentManagerBundle();
  if (!result)
  {
    goto LABEL_54;
  }

  v2 = result;
  v3.value._object = 0xEB00000000656C62;
  v40._object = 0x8000000249BE1B50;
  v4._countAndFlagsBits = 0x6573776F7242;
  v40._countAndFlagsBits = 0xD00000000000007BLL;
  v4._object = 0xE600000000000000;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v40)._countAndFlagsBits;

  v7 = [v0 enclosingTabSwitcherStyle];
  v8 = *&v0[OBJC_IVAR___DOCSidebarViewController_configuration];
  v9 = [v8 isFilesApp];
  if (v7 == 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (([v0 enclosedInUIPDocumentLanding] & 1) != 0 || objc_msgSend(v8, sel_isPickerUI) && DOCSidebarViewController.currentPresentationContext.getter() != 2)
  {
    v11 = 0;
  }

  else
  {
    v12 = [v8 hostBundleTitle];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      if (v10 & 1) != 0 || ([v8 isPickerUI])
      {
        v11 = 1;
      }

      else
      {
        v15 = _UISolariumEnabled();
        v11 = v15 ^ 1;
        if (!v15)
        {
          countAndFlagsBits = v14;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  v16 = [v0 traitCollection];
  if (DOCUsePadIdiomForTraits())
  {
    v17 = [v16 horizontalSizeClass];

    if (v17 == 2)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v18 = [v0 splitViewController];
  if (!v18)
  {
    goto LABEL_38;
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {

    goto LABEL_38;
  }

  v20 = [v19 fullDocumentManagerViewController];

  if (!v20)
  {
LABEL_38:
    object = 0;
    goto LABEL_39;
  }

  v21 = [v20 dataSource];
  v22 = MEMORY[0x277D85000];
  v23 = (*((*MEMORY[0x277D85000] & *v21) + 0xC0))();

  if (!v23)
  {
LABEL_47:

    goto LABEL_38;
  }

  if (!(v23 >> 62))
  {
    result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_27;
    }

LABEL_51:

    goto LABEL_38;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_51;
  }

LABEL_27:
  if ((v23 & 0xC000000000000001) == 0)
  {
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = *(v23 + 32);
      goto LABEL_30;
    }

    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v24 = MEMORY[0x24C1FC540](0, v23);
LABEL_30:
  v25 = v24;

  v26 = *((*v22 & *v25) + 0xE8);
  v27 = v25;
  v28 = v26();

  if (!v28)
  {

    goto LABEL_47;
  }

  type metadata accessor for DOCItemCollectionViewController(0);
  v29 = swift_dynamicCastClass();
  if (!v29)
  {

    goto LABEL_38;
  }

  v30 = *((*v22 & *v29) + 0x198);
  v31 = v28;
  v32 = v30();

  if (!v32 || (v33 = [v32 title], v32, !v33))
  {

    goto LABEL_47;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type String and conformance String();
  v34 = StringProtocol.contains<A>(_:)();

  if ((v34 & 1) == 0)
  {

    goto LABEL_38;
  }

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_55:
    __break(1u);
    return result;
  }

  v35 = result;
  v41._object = 0x8000000249BEF1B0;
  v36._countAndFlagsBits = 1801675074;
  v36._object = 0xE400000000000000;
  v37.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v37.value._object = 0xEB00000000656C62;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v41._countAndFlagsBits = 0xD000000000000018;
  object = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, v35, v38, v41)._object;

LABEL_39:
  if (object)
  {
  }

  if (v11)
  {
    return countAndFlagsBits;
  }

  else
  {
    return 0;
  }
}

uint64_t DOCSidebarViewController.isEffectivelyCollapsed()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1E8))();
  if (v1)
  {
    v2 = [v1 sidebarViewControllerWithIsCollapsed_];
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v0 traitCollection];
  v4 = [v3 sourceListPresentationContext];

  if (DOCSidebarViewController.currentPresentationContext.getter() == 2)
  {
    return 1;
  }

  v6 = [v0 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 transitionCoordinator];
    if (!v8)
    {
LABEL_11:

      return (v4 != 0) & v2;
    }

    v9 = v8;
    v10 = [v8 viewControllerForKey_];
    if (!v10 || (v11 = v10, v10, v11 != v0))
    {
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v12 = [v9 viewControllerForKey_];

    swift_unknownObjectRelease();
    if (!v12)
    {
      return 1;
    }

    if (v12 != v0)
    {
      return 1;
    }
  }

  return (v4 != 0) & v2;
}

id DOCSidebarViewController.revealFloatingBarItem.getter()
{
  v1 = *(**(v0 + OBJC_IVAR___DOCSidebarViewController_bbiStorage) + 128);

  v3 = v1(v15);
  v4 = *(v2 + 8);
  if (v4)
  {
    v5 = *(v2 + 8);
  }

  else
  {
    v6 = v2;
    v7 = closure #1 in DOCSidebarViewController.revealFloatingBarItem.getter();
    v8 = *(v6 + 8);
    *(v6 + 8) = v7;
    v9 = v7;

    type metadata accessor for DOCBarButtonItemGroup();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_249BA0290;
    *(v10 + 32) = v9;
    v5 = v9;
    v11 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v12 = *v6;
    *v6 = v11;

    v4 = 0;
  }

  v13 = v4;
  v3(v15, 0);

  return v5;
}

uint64_t DOCSidebarViewController.revealFloatingBarItemShouldBeShown.getter()
{
  if (([v0 sidebarVisibilityPinnedToWindowSizingOnly] & 1) != 0 || (objc_msgSend(*&v0[OBJC_IVAR___DOCSidebarViewController_configuration], sel_isPickerUI) & 1) != 0 || DOCSidebarViewController.currentPresentationContext.getter() == 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = DOCSidebarViewController.currentPresentationContext.getter() ^ 1;
  }

  return v1 & 1;
}

uint64_t DOCSidebarViewController.currentLeftBarButtonItems.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v37 = MEMORY[0x277D84F90];
  if ((_UISolariumEnabled() & 1) == 0 && [objc_opt_self() enclosingTabSwitcherCanBeFloating])
  {
    v3 = *(**(v0 + OBJC_IVAR___DOCSidebarViewController_bbiStorage) + 128);

    v5 = v3(v36);
    v6 = *(v4 + 8);
    if (!v6)
    {
      v7 = v4;
      v8 = closure #1 in DOCSidebarViewController.revealFloatingBarItem.getter();
      v9 = *(v7 + 8);
      *(v7 + 8) = v8;
      v10 = v8;

      type metadata accessor for DOCBarButtonItemGroup();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_249BA0290;
      *(v11 + 32) = v10;
      v12 = v10;
      v13 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

      v14 = *v7;
      *v7 = v13;

      v6 = 0;
    }

    v15 = v6;
    v5(v36, 0);

    MEMORY[0x24C1FB090](v16);
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v2 = v37;
  }

  v17 = DOCSidebarViewController.currentPresentationContext.getter();
  if ([v1 isEditing] && (objc_msgSend(*(v1 + OBJC_IVAR___DOCSidebarViewController_configuration), sel_isPickerUI) & 1) == 0 && v17 != 2)
  {
    v18 = *(**(v1 + OBJC_IVAR___DOCSidebarViewController_bbiStorage) + 176);

    v20 = v18(v36);
    v21 = *(v19 + 8);
    if (!v21)
    {
      v22 = v19;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
      v35 = v20;
      v23 = DOCSidebarViewController.actionForSetIsEditing(to:)(0);
      v24 = static UIBarButtonItem.doc_endEditingModeButton(withAction:)(v23);

      v25 = *(v22 + 8);
      *(v22 + 8) = v24;
      v26 = v24;

      type metadata accessor for DOCBarButtonItemGroup();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_249BA0290;
      *(v27 + 32) = v26;
      v28 = v26;
      v29 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

      v30 = *v22;
      *v22 = v29;
      v20 = v35;

      v21 = 0;
    }

    v31 = v21;
    v20(v36, 0);

    MEMORY[0x24C1FB090](v32);
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v2 = v37;
  }

  if ([*(v1 + OBJC_IVAR___DOCSidebarViewController_configuration) isPickerUI] && (objc_msgSend(v1, sel_isEditing) & 1) == 0)
  {
    v33 = (*((*MEMORY[0x277D85000] & *v1) + 0x580))();
    v36[0] = v2;
    specialized Array.append<A>(contentsOf:)(v33, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
    return v36[0];
  }

  return v2;
}

uint64_t DOCSidebarViewController.currentRightBarButtonItems.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v44 = MEMORY[0x277D84F90];
  if (_UISolariumEnabled() && [objc_opt_self() enclosingTabSwitcherCanBeFloating])
  {
    v3 = *(**(v0 + OBJC_IVAR___DOCSidebarViewController_bbiStorage) + 128);

    v5 = v3(v43);
    v6 = *(v4 + 8);
    if (!v6)
    {
      v7 = v4;
      v8 = closure #1 in DOCSidebarViewController.revealFloatingBarItem.getter();
      v9 = *(v7 + 8);
      *(v7 + 8) = v8;
      v10 = v8;

      type metadata accessor for DOCBarButtonItemGroup();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_249BA0290;
      *(v11 + 32) = v10;
      v12 = v10;
      v13 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

      v14 = *v7;
      *v7 = v13;

      v6 = 0;
    }

    v15 = v6;
    v5(v43, 0);

    MEMORY[0x24C1FB090](v16);
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v2 = v44;
  }

  v17 = *(v1 + OBJC_IVAR___DOCSidebarViewController_configuration);
  if ([v17 forBrowsingInApp])
  {
    v18 = (*((*MEMORY[0x277D85000] & *v1) + 0x1E8))();
    if (v18)
    {
      v19 = [v18 sidebarViewControllerWithIsCollapsed_];
      swift_unknownObjectRelease();
      if (v19)
      {
        v20 = UIViewController.progressButtonItemForOverlay.getter();
        if (v20)
        {
          v21 = v20;
          MEMORY[0x24C1FB090]();
          if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v2 = v44;
        }
      }
    }
  }

  v22 = DOCSidebarViewController.currentPresentationContext.getter();
  if (([v1 isEditing] & 1) == 0)
  {
    v32 = *(**(v1 + OBJC_IVAR___DOCSidebarViewController_bbiStorage) + 152);

    v25 = v32(v43);
    v26 = *(v33 + 8);
    if (v26)
    {
      goto LABEL_24;
    }

    v27 = v33;
    v34 = closure #1 in DOCSidebarViewController.menuButtonItem.getter();
    v35 = *(v27 + 8);
    *(v27 + 8) = v34;
    v31 = v34;

    goto LABEL_23;
  }

  if (([v17 isPickerUI] & 1) == 0 && v22 != 2)
  {
    return v2;
  }

  v23 = *(**(v1 + OBJC_IVAR___DOCSidebarViewController_bbiStorage) + 176);

  v25 = v23(v43);
  v26 = *(v24 + 8);
  if (!v26)
  {
    v27 = v24;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
    v28 = DOCSidebarViewController.actionForSetIsEditing(to:)(0);
    v29 = static UIBarButtonItem.doc_endEditingModeButton(withAction:)(v28);

    v30 = *(v27 + 8);
    *(v27 + 8) = v29;
    v31 = v29;

LABEL_23:
    type metadata accessor for DOCBarButtonItemGroup();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_249BA0290;
    *(v36 + 32) = v31;
    v37 = v31;
    v38 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v39 = *v27;
    *v27 = v38;

    v26 = 0;
  }

LABEL_24:
  v40 = v26;
  v25(v43, 0);

  MEMORY[0x24C1FB090](v41);
  if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v44;
}

id DOCSidebarViewController.menuButtonItem.getter()
{
  v1 = *(**(v0 + OBJC_IVAR___DOCSidebarViewController_bbiStorage) + 152);

  v3 = v1(v15);
  v4 = *(v2 + 8);
  if (v4)
  {
    v5 = *(v2 + 8);
  }

  else
  {
    v6 = v2;
    v7 = closure #1 in DOCSidebarViewController.menuButtonItem.getter();
    v8 = *(v6 + 8);
    *(v6 + 8) = v7;
    v9 = v7;

    type metadata accessor for DOCBarButtonItemGroup();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_249BA0290;
    *(v10 + 32) = v9;
    v5 = v9;
    v11 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v12 = *v6;
    *v6 = v11;

    v4 = 0;
  }

  v13 = v4;
  v3(v15, 0);

  return v5;
}

id DOCSidebarViewController.endEditingItem.getter()
{
  v1 = *(**(v0 + OBJC_IVAR___DOCSidebarViewController_bbiStorage) + 176);

  v3 = v1(v16);
  v4 = *(v2 + 8);
  if (v4)
  {
    v5 = *(v2 + 8);
  }

  else
  {
    v6 = v2;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
    v7 = DOCSidebarViewController.actionForSetIsEditing(to:)(0);
    v8 = static UIBarButtonItem.doc_endEditingModeButton(withAction:)(v7);

    v9 = *(v6 + 8);
    *(v6 + 8) = v8;
    v10 = v8;

    type metadata accessor for DOCBarButtonItemGroup();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_249BA0290;
    *(v11 + 32) = v10;
    v5 = v10;
    v12 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v13 = *v6;
    *v6 = v12;

    v4 = 0;
  }

  v14 = v4;
  v3(v16, 0);

  return v5;
}

uint64_t key path setter for DOCSidebarViewController.BBIStorage.revealFloatingBarItem : DOCSidebarViewController.BBIStorage(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(**a2 + 120);
  v5 = v3;
  v6 = v2;
  return v4(v2, v3);
}

void *DOCSidebarViewController.BBIStorage.revealFloatingBarItem.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1;
  v4 = v2;
  return v1;
}

void DOCSidebarViewController.BBIStorage.revealFloatingBarItem.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t key path setter for DOCSidebarViewController.BBIStorage.menuButtonItem : DOCSidebarViewController.BBIStorage(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(**a2 + 144);
  v5 = v3;
  v6 = v2;
  return v4(v2, v3);
}

void *DOCSidebarViewController.BBIStorage.menuButtonItem.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = v1;
  v4 = v2;
  return v1;
}

void DOCSidebarViewController.BBIStorage.menuButtonItem.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t key path setter for DOCSidebarViewController.BBIStorage.endEditingItem : DOCSidebarViewController.BBIStorage(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(**a2 + 168);
  v5 = v3;
  v6 = v2;
  return v4(v2, v3);
}

void *DOCSidebarViewController.BBIStorage.endEditingItem.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = v1;
  v4 = v2;
  return v1;
}

void DOCSidebarViewController.BBIStorage.endEditingItem.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

double DOCSidebarViewController.BBIStorage.init()()
{
  result = 0.0;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[1] = 0u;
  return result;
}

void DOCSidebarViewController.BBIStorage.__ivar_destroyer()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
}

uint64_t DOCSidebarViewController.BBIStorage.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  v3 = *(v0 + 56);

  return v0;
}

uint64_t DOCSidebarViewController.BBIStorage.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);

  return swift_deallocClassInstance();
}

id closure #1 in DOCSidebarViewController.revealFloatingBarItem.getter()
{
  v0 = objc_opt_self();
  v1 = MEMORY[0x24C1FAD20](0xD000000000000023, 0x8000000249BEF1D0);
  v2 = [v0 _systemImageNamed_withConfiguration_];

  if (v2)
  {
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v16.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v16.value.super.isa = 0;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(v4, 0, v16, 0, v3);
  v6 = v5;
  result = _DocumentManagerBundle();
  if (result)
  {
    v8 = result;
    v17._object = 0x8000000249BEF200;
    v9._countAndFlagsBits = 0x6469532065646948;
    v9._object = 0xEC00000072616265;
    v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v10.value._object = 0xEB00000000656C62;
    v17._countAndFlagsBits = 0xD00000000000003ELL;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v17);

    v13 = MEMORY[0x24C1FAD20](v12._countAndFlagsBits, v12._object);

    [v6 setAccessibilityLabel_];

    v14 = v6;
    v15 = MEMORY[0x24C1FAD20](0x6953656C67676F54, 0xED00007261626564);
    [v14 setAccessibilityIdentifier_];

    [v14 setAccessibilityTraits_];
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in DOCSidebarViewController.revealFloatingBarItem.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong splitViewController];
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (!v4)
      {
      }
    }

    else
    {
      v4 = 0;
    }

    [v4 hideSidebar];
  }
}

id closure #1 in DOCSidebarViewController.menuButtonItem.getter()
{
  if (_UISolariumEnabled())
  {
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v0 = &selRef_ellipsisMenuItemSmallImageName;
  }

  else
  {
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v0 = &selRef_ellipsisMenuItemImageName;
  }

  swift_beginAccess();
  v1 = [static DOCInterface.general *v0];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = objc_allocWithZone(type metadata accessor for DOCSymbolImageBarButtonItem());
  v6 = DOCSymbolImageBarButtonItem.init(symbolDescriptor:)(v2, v4, 3);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = MEMORY[0x24C1FAD20](0x6265646953434F44, 0xEE00756E654D7261);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_249BA0290;
  v10 = objc_opt_self();
  aBlock[4]._rawValue = partial apply for closure #1 in closure #1 in DOCSidebarViewController.menuButtonItem.getter;
  aBlock[5]._rawValue = v7;
  aBlock[0]._rawValue = MEMORY[0x277D85DD0];
  aBlock[1]._rawValue = 1107296256;
  aBlock[2]._rawValue = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  aBlock[3]._rawValue = &block_descriptor_214_0;
  v11 = _Block_copy(aBlock);
  v12 = v6;

  v13 = [v10 elementWithUncachedProvider_];
  _Block_release(v11);
  *(preferredElementSize + 32) = v13;
  v14 = v8;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v21.value.super.isa = 0;
  v21.is_nil = v8;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v16, v15, 0, v21, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, aBlock[0]);
  v18 = v17;
  [v12 setMenu_];

  return v12;
}

id fetchMenuItems #1 () in closure #1 in DOCSidebarViewController.menuButtonItem.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = MEMORY[0x277D84F90];
  if (!Strong)
  {
    return v1;
  }

  v2 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13UIMenuElementCSgGMd);
  v3 = swift_allocObject();
  v3[1] = xmmword_249BA08C0;
  v4 = OBJC_IVAR___DOCSidebarViewController_configuration;
  v5 = *(v2 + OBJC_IVAR___DOCSidebarViewController_configuration);
  if ([v5 isFilesApp] && (objc_msgSend(v5, sel_isPickerUI) & 1) == 0 && (specialized static DOCDocumentScannerUtil.canPresentScanner.getter() & 1) != 0)
  {
    v6 = MEMORY[0x24C1FAD20](0xD000000000000013, 0x8000000249BDAC40);
    v7 = [objc_opt_self() systemImageNamed_];

    if (one-time initialization token for scanDocumentActionTitle != -1)
    {
      swift_once();
    }

    MEMORY[0x24C1FAD20](0xD000000000000016, 0x8000000249BDAC60);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v36._rawValue = 0;
    v8 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  else
  {
    v8 = 0;
  }

  *(v3 + 4) = v8;
  v9 = *(v2 + v4);
  v10 = objc_opt_self();
  v11 = [v9 sceneIdentifier];
  v12 = [v10 globalTabbedBrowserControllerForIdentifier_];

  if (!v12)
  {
    goto LABEL_14;
  }

  if ((specialized static DOCTabbedBrowserViewController.connectToServerAllowed(for:)(v9) & 1) == 0)
  {

LABEL_14:
    v21 = 0;
    goto LABEL_15;
  }

  v13 = MEMORY[0x24C1FAD20](0xD000000000000021, 0x8000000249BC9D20);
  v14 = [objc_opt_self() systemImageNamed_];

  result = _DocumentManagerBundle();
  if (result)
  {
    v16 = result;
    swift__string._object = 0x8000000249BC9D50;
    v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v17.value._object = 0xEB00000000656C62;
    v18._object = 0x8000000249BC9CC0;
    swift__string._countAndFlagsBits = 0xD00000000000003FLL;
    v18._countAndFlagsBits = 0xD000000000000011;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v17, v16, v19, swift__string);

    MEMORY[0x24C1FAD20](0xD000000000000019, 0x8000000249BC9D90);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    v20 = swift_allocObject();
    *(v20 + 16) = 1;
    *(v20 + 24) = v12;
    v36._rawValue = 0;
    v21 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
LABEL_15:
    *(v3 + 5) = v21;
    v22 = DOCSidebarViewController.actionForSetIsEditing(to:)(1);
    *(v3 + 6) = v22;
    v38 = v3;
    v23 = (*((*MEMORY[0x277D85000] & *v2) + 0x610))(v22);
    if (v23)
    {
      v24 = v23;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      preferredElementSize = swift_allocObject();
      *(preferredElementSize + 16) = xmmword_249BA0290;
      v26 = objc_opt_self();
      v27 = swift_allocObject();
      *(v27 + 16) = v24;
      aBlock[4] = partial apply for closure #1 in fetchMenuItems #1 () in closure #1 in DOCSidebarViewController.menuButtonItem.getter;
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
      aBlock[3] = &block_descriptor_220_1;
      v28 = _Block_copy(aBlock);
      v3 = v24;

      v29 = [v26 elementWithUncachedProvider_];
      _Block_release(v28);
      *(preferredElementSize + 32) = v29;
      v30._countAndFlagsBits = 0x704F206775626544;
      v30._object = 0xED0000736E6F6974;
      v39.value.super.isa = 0;
      v39.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v31, v30, 0, v39, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v36);
      v33 = v32;
      MEMORY[0x24C1FB090]();
      if (v38[2] >= v38[3] >> 1)
      {
LABEL_28:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v3 = v38;
    }

    v33 = 0;
    aBlock[0] = v1;
    v34 = *(v3 + 2);
    while (v34 != v33)
    {
      if (v33 >= *(v3 + 2))
      {
        __break(1u);
        goto LABEL_28;
      }

      v35 = *(v3 + v33++ + 4);
      if (v35)
      {
        MEMORY[0x24C1FB090](v35);
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = aBlock[0];
      }
    }

    return v1;
  }

  __break(1u);
  return result;
}

id DOCSidebarViewController.actionForSetIsEditing(to:)(char a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 sourceOutlineStyle];

  result = _DocumentManagerBundle();
  v6 = result;
  if (v4)
  {
    if (result)
    {
      v17._object = 0x8000000249BEEF70;
      v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v7.value._object = 0xEB00000000656C62;
      v17._countAndFlagsBits = 0xD000000000000032;
      v8._countAndFlagsBits = 1953064005;
      v8._object = 0xE400000000000000;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v7, v6, v9, v17);
      v10 = "he sidebar popover";
      v11 = 0xD00000000000001BLL;
LABEL_6:

      MEMORY[0x24C1FAD20](v11, v10 | 0x8000000000000000);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = a1 & 1;
      return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    }

    __break(1u);
  }

  else if (result)
  {
    v11 = 0xD000000000000015;
    v18._object = 0x8000000249BEEFD0;
    v12._countAndFlagsBits = 0x6469532074696445;
    v12._object = 0xEC00000072616265;
    v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v13.value._object = 0xEB00000000656C62;
    v18._countAndFlagsBits = 0xD00000000000003ALL;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v6, v14, v18);
    v10 = "ion in the sidebar popover";
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in fetchMenuItems #1 () in closure #1 in DOCSidebarViewController.menuButtonItem.getter(void (*a1)(uint64_t), int a2, id a3)
{
  v4 = [a3 children];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  a1(v5);
}

void closure #1 in DOCSidebarViewController.actionForSetIsEditing(to:)(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = a3 & 1;
    v6 = Strong;
    [Strong setEditing:v5 animated:1];
  }
}

double DOCSidebarViewController.target(forAction:withSender:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with copy of DOCGridLayout.Spec?(a2, &v48, &_sypSgMd);
  v6 = *(&v49 + 1);
  if (*(&v49 + 1))
  {
    v7 = __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
    v8 = *(v6 - 8);
    v9 = MEMORY[0x28223BE20](v7, v7);
    v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_0(&v48);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v45 canPerformAction:a1 withSender:v12];
  swift_unknownObjectRelease();
  if (v13)
  {
    *(a3 + 24) = type metadata accessor for DOCSidebarViewController(0);
    v14 = v45;
    *a3 = v45;

    v15 = v14;
    return result;
  }

  v17 = DOCSidebarViewController.currentPresentationContext.getter();
  if (v17 == 2 || (v17 & 1) != 0)
  {
    outlined init with copy of DOCGridLayout.Spec?(a2, &v48, &_sypSgMd);
    v18 = *(&v49 + 1);
    if (*(&v49 + 1))
    {
      v19 = __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
      v20 = *(v18 - 8);
      v21 = MEMORY[0x28223BE20](v19, v19);
      v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v23, v21);
      v24 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v20 + 8))(v23, v18);
      __swift_destroy_boxed_opaque_existential_0(&v48);
    }

    else
    {
      v24 = 0;
    }

    v25 = type metadata accessor for DOCSidebarViewController(0);
    v46.receiver = v45;
    v46.super_class = v25;
    v26 = objc_msgSendSuper2(&v46, sel_targetForAction_withSender_, a1, v24);
    swift_unknownObjectRelease();
    if (v26)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
LABEL_35:
      result = *&v48;
      v43 = v49;
      *a3 = v48;
      *(a3 + 16) = v43;
      return result;
    }

    goto LABEL_34;
  }

  if (static Selector.== infix(_:_:)())
  {
    v27 = [v45 splitViewController];
    if (v27)
    {
      v28 = v27;
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        v30 = [v29 fullDocumentManagerViewController];

        if (v30)
        {
          outlined init with copy of DOCGridLayout.Spec?(a2, &v48, &_sypSgMd);
          v31 = *(&v49 + 1);
          if (*(&v49 + 1))
          {
            v32 = __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
            v33 = *(v31 - 8);
            v34 = MEMORY[0x28223BE20](v32, v32);
            v36 = &v44 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v33 + 16))(v36, v34);
            v37 = _bridgeAnythingToObjectiveC<A>(_:)();
            (*(v33 + 8))(v36, v31);
            __swift_destroy_boxed_opaque_existential_0(&v48);
          }

          else
          {
            v37 = 0;
          }

          v42 = [v30 targetForAction:a1 withSender:v37];

          swift_unknownObjectRelease();
          if (v42)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v48 = 0u;
            v49 = 0u;
          }

          v47[0] = v48;
          v47[1] = v49;
          if (*(&v49 + 1))
          {
            outlined init with take of Any(v47, &v48);
            goto LABEL_35;
          }
        }
      }

      else
      {
      }
    }

LABEL_34:
    v48 = 0u;
    v49 = 0u;
    goto LABEL_35;
  }

  v38 = [v45 splitViewController];
  if (v38)
  {
    v39 = v38;
    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (v40)
    {
      v41 = [v40 fullDocumentManagerViewController];

      if (v41)
      {
        *(a3 + 24) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCFullDocumentManagerViewController);
        *a3 = v41;
        return result;
      }
    }

    else
    {
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

id DOCSidebarViewController.canPerformAction(_:withSender:)(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    v5 = [v2 navigationItem];
    v6 = [v5 searchController];

    if (v6)
    {

      return ([v2 isEditing] ^ 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined init with copy of DOCGridLayout.Spec?(a2, v18, &_sypSgMd);
    v8 = v19;
    if (v19)
    {
      v9 = __swift_project_boxed_opaque_existential_1(v18, v19);
      v10 = *(v8 - 8);
      v11 = MEMORY[0x28223BE20](v9, v9);
      v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13, v11);
      v14 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v10 + 8))(v13, v8);
      __swift_destroy_boxed_opaque_existential_0(v18);
    }

    else
    {
      v14 = 0;
    }

    v15 = type metadata accessor for DOCSidebarViewController(0);
    v17.receiver = v2;
    v17.super_class = v15;
    v16 = objc_msgSendSuper2(&v17, sel_canPerformAction_withSender_, a1, v14);
    swift_unknownObjectRelease();
    return v16;
  }
}

Swift::Void __swiftcall DOCSidebarViewController.performFind(_:)(UIKeyCommand *a1)
{
  v2 = [v1 navigationItem];
  v3 = [v2 searchController];

  if (v3)
  {
    [v3 setActive_];
    v4 = [v3 searchBar];
    [v4 becomeFirstResponder];
  }
}

Swift::Void __swiftcall DOCSidebarViewController.clearCurrentlyEditingSidebarItem()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x428))();
  if (v1)
  {
    (*(*v1 + 168))();
    DOCSidebarViewController.reflectCurrentLocationToSelectedInSidebar(scrollToVisible:forAppearance:)(0, 0);
  }
}

uint64_t DOCSidebarViewController.collectionView(_:shouldSelectItemAt:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v12 - v7;
  DOCSidebarViewController.diffableSnapshot()();
  specialized NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)(v12);
  (*(v5 + 8))(v8, v4);
  if (v12[0])
  {
    v15 = v13;
    *v16 = v14[0];
    *&v16[9] = *(v14 + 9);
    v17[0] = v12[0];
    v17[1] = v12[1];
    outlined destroy of DOCSidebarViewController.OutlineSection(v17);
    if (v16[24] == 255)
    {
      return 1;
    }

    outlined destroy of CharacterSet?(&v15, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = [v2 collectionView:a1 shouldHighlightItemAtIndexPath:isa];

  return v10;
}

uint64_t DOCSidebarViewController.collectionView(_:shouldHighlightItemAt:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17[-v7];
  DOCSidebarViewController.diffableSnapshot()();
  specialized NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)(v18);
  (*(v5 + 8))(v8, v4);
  if (v18[0])
  {
    v23 = v19;
    *v24 = v20[0];
    *&v24[9] = *(v20 + 9);
    v25[0] = v18[0];
    v25[1] = v18[1];
    outlined destroy of DOCSidebarViewController.OutlineSection(v25);
    if (v24[24] == 255)
    {
      v14 = 1;
      return v14 & 1;
    }

    outlined destroy of CharacterSet?(&v23, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
  }

  DOCSidebarViewController.sidebarItem(at:logIfMissing:)(a2, 1, v21);
  if (v22 <= 4u)
  {
    v9 = v21[0];
    if (!v22)
    {
      v15 = (*((*MEMORY[0x277D85000] & *v2) + 0x200))();
      v14 = DOCConfiguration.allowsSelecting(_:pickerContext:)(v9, v15);

      goto LABEL_17;
    }

    if (v22 == 1)
    {
      v10 = (*((*MEMORY[0x277D85000] & *v2) + 0x200))();
      type metadata accessor for DOCFileProviderSource();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = *(v11 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
        if (v12)
        {
          outlined init with copy of DOCGridLayout.Spec?(v21, v17, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
          v13 = v12;
          v14 = DOCConfiguration.allowsSelecting(_:pickerContext:)(v13, v10);

          outlined destroy of CharacterSet?(v21, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
LABEL_17:
          outlined destroy of CharacterSet?(v21, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
          return v14 & 1;
        }
      }
    }

LABEL_16:
    v14 = 1;
    goto LABEL_17;
  }

  v14 = 0;
  if (v22 == 5)
  {
    goto LABEL_17;
  }

  if (v22 != 255)
  {
    goto LABEL_16;
  }

  return v14 & 1;
}

void logIgnoredRequest #1 (withReason:) in DOCSidebarViewController.shouldChangeExpandedState(of:to:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.Sidebar);

  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315650;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x8000000249BEF240, &v13);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v13);
    *(v10 + 22) = 2080;
    *(v10 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v13);
    _os_log_impl(&dword_2493AC000, oslog, v9, "%s: Ignoring %s for %s.", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }
}

uint64_t DOCSidebarViewController.withLocationChangePacingDisabled(_:)(uint64_t (*a1)(uint64_t))
{
  v3 = *(*((*MEMORY[0x277D85000] & *v1) + 0x488))();
  (*(v3 + 320))();

  return a1(v4);
}

Swift::Void __swiftcall DOCSidebarViewController.updateSelectionToMatchBrowsedLocation(_:scrollToVisible:)(DOCConcreteLocation_optional *_, Swift::Bool scrollToVisible)
{
  v3 = v2;
  if (_)
  {
    v6 = *(v2 + OBJC_IVAR___DOCSidebarViewController_locationSelection);
    v7 = *(v6 + 24);
    if (v7)
    {
      v8 = *(v6 + 24);
      goto LABEL_6;
    }

    v9 = *(v6 + 16);
    if (v9)
    {
      v8 = v9;
      v7 = 0;
LABEL_6:
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
      v10 = _;
      v11 = v7;
      v12 = v8;
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        return;
      }
    }
  }

  v14 = *((*MEMORY[0x277D85000] & *v3) + 0x488);
  v15 = *v14();
  v16 = (*(v15 + 304))();

  v17 = OBJC_IVAR___DOCSidebarViewController_locationSelection;
  v18 = *(v3 + OBJC_IVAR___DOCSidebarViewController_locationSelection);
  v19 = *(v18 + 24);
  if (v16)
  {
    *(v18 + 24) = _;
    v20 = _;

    v21 = *v14();
    (*(v21 + 384))(0xD00000000000003BLL, 0x8000000249BEE720);

    v23 = (v14)(v22);
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = _;
    *(v25 + 32) = scrollToVisible;
    v26 = *(*v23 + 408);
    v27 = v20;

    v26(partial apply for closure #1 in DOCSidebarViewController.updateSelectionToMatchBrowsedLocation(_:scrollToVisible:), v25);
  }

  else
  {
    *(v18 + 24) = 0;

    v28 = *(v3 + v17);
    v29 = *(v28 + 16);
    *(v28 + 16) = _;
    v30 = _;

    DOCSidebarViewController.reflectCurrentLocationToSelectedInSidebar(scrollToVisible:forAppearance:)(scrollToVisible, 0);
    v31 = *v14();
    (*(v31 + 320))();
  }
}

void closure #1 in DOCSidebarViewController.updateSelectionToMatchBrowsedLocation(_:scrollToVisible:)(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = a3 & 1;
    v7 = Strong;
    [Strong updateSelectionToMatchBrowsedLocation:a2 scrollToVisible:v6];
  }
}

void DOCSidebarViewController.noteBrowserDidUpdateHierarchy(_:displayedRootLocation:)(uint64_t a1, uint64_t a2)
{
  [v2 updateSelectionToMatchBrowsedLocation:a2 scrollToVisible:0];

  DOCSidebarViewController.updatePreferredFocusIndexPath()();
}

_OWORD *DOCSidebarViewController.presentAlertToEnableProviderExtension(item:)(_OWORD *result)
{
  if (*(result + 40) == 1)
  {
    v2 = result;
    v52 = v1;
    v50 = *result;
    v3 = [v50 displayName];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    result = _DocumentManagerBundle();
    if (result)
    {
      v7 = result;
      v8.value._object = 0xEB00000000656C62;
      v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v59._object = 0x8000000249BEF0C0;
      v9._object = 0x8000000249BEF0A0;
      v59._countAndFlagsBits = 0xD00000000000005ALL;
      v9._countAndFlagsBits = 0x1000000000000011;
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v8, v7, v10, v59);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_249B9A480;
      *(v11 + 56) = MEMORY[0x277D837D0];
      v12 = lazy protocol witness table accessor for type String and conformance String();
      *(v11 + 64) = v12;
      *(v11 + 32) = v4;
      *(v11 + 40) = v6;

      v13 = static String.localizedStringWithFormat(_:_:)();
      v15 = v14;

      result = _DocumentManagerBundle();
      if (result)
      {
        v16 = result;
        v60._object = 0x8000000249BEF150;
        v17._object = 0x8000000249BEF120;
        v60._countAndFlagsBits = 0xD00000000000005CLL;
        v17._countAndFlagsBits = 0xD000000000000024;
        v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v18.value._object = 0xEB00000000656C62;
        v19._countAndFlagsBits = 0;
        v19._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v60);

        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_249B9A480;
        *(v20 + 56) = MEMORY[0x277D837D0];
        *(v20 + 64) = v12;
        *(v20 + 32) = v4;
        *(v20 + 40) = v6;
        v21 = static String.localizedStringWithFormat(_:_:)();
        v23 = v22;

        v24 = MEMORY[0x24C1FAD20](v13, v15);

        v25 = MEMORY[0x24C1FAD20](v21, v23);

        v51 = [objc_opt_self() alertControllerWithTitle:v24 message:v25 preferredStyle:1];

        result = _DocumentManagerBundle();
        if (result)
        {
          v26 = result;
          v61._object = 0xE000000000000000;
          v27._countAndFlagsBits = 0x6C65636E6143;
          v27._object = 0xE600000000000000;
          v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v28.value._object = 0xEB00000000656C62;
          v29._countAndFlagsBits = 0;
          v29._object = 0xE000000000000000;
          v61._countAndFlagsBits = 0;
          v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v61);

          v31 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v32 = swift_allocObject();
          *(v32 + 16) = v31;
          v33 = v2[1];
          *(v32 + 24) = *v2;
          *(v32 + 40) = v33;
          *(v32 + 49) = *(v2 + 25);
          outlined init with copy of DOCSidebarItem(v2, &aBlock);

          v34 = MEMORY[0x24C1FAD20](v30._countAndFlagsBits, v30._object);

          v57 = partial apply for closure #1 in DOCSidebarViewController.presentAlertToEnableProviderExtension(item:);
          v58 = v32;
          aBlock = MEMORY[0x277D85DD0];
          v54 = 1107296256;
          v55 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
          v56 = &block_descriptor_243_2;
          v35 = _Block_copy(&aBlock);

          v36 = objc_opt_self();
          v37 = [v36 actionWithTitle:v34 style:1 handler:v35];
          _Block_release(v35);

          result = _DocumentManagerBundle();
          if (result)
          {
            v38 = result;
            v62._object = 0xE000000000000000;
            v39._countAndFlagsBits = 0x6E4F206E727554;
            v39._object = 0xE700000000000000;
            v40.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v40.value._object = 0xEB00000000656C62;
            v41._countAndFlagsBits = 0;
            v41._object = 0xE000000000000000;
            v62._countAndFlagsBits = 0;
            v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v40, v38, v41, v62);

            v43 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v44 = swift_allocObject();
            *(v44 + 16) = v43;
            v45 = v2[1];
            *(v44 + 24) = *v2;
            *(v44 + 40) = v45;
            *(v44 + 49) = *(v2 + 25);
            *(v44 + 72) = v50;
            outlined init with copy of DOCSidebarItem(v2, &aBlock);
            outlined init with copy of DOCSidebarItem(v2, &aBlock);

            v46 = MEMORY[0x24C1FAD20](v42._countAndFlagsBits, v42._object);

            v57 = partial apply for closure #2 in DOCSidebarViewController.presentAlertToEnableProviderExtension(item:);
            v58 = v44;
            aBlock = MEMORY[0x277D85DD0];
            v54 = 1107296256;
            v55 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
            v56 = &block_descriptor_250_0;
            v47 = _Block_copy(&aBlock);

            v48 = [v36 actionWithTitle:v46 style:0 handler:v47];
            _Block_release(v47);

            v49 = v51;
            [v49 addAction_];
            [v49 addAction_];
            [v49 setPreferredAction_];

            [v52 presentViewController:v49 animated:1 completion:0];
            return outlined destroy of DOCSidebarItem(v2);
          }

LABEL_11:
          __break(1u);
          return result;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

void closure #1 in DOCSidebarViewController.presentAlertToEnableProviderExtension(item:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = DOCSidebarViewController.deselectSidebarItem(_:animated:)(a3, 0);
    (*((*MEMORY[0x277D85000] & *v5) + 0x4B8))(v7, v6);
    if (v9 == 255)
    {
    }

    else
    {
      v10[0] = v7[0];
      v10[1] = v7[1];
      v11 = v8;
      v12 = v9;
      if (DOCDeviceIsPad())
      {
        DOCSidebarViewController.selectSidebarItem(_:scrollToVisible:animated:)(v10, 0, 0);
      }

      outlined destroy of CharacterSet?(v7, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    }
  }
}

void closure #2 in DOCSidebarViewController.presentAlertToEnableProviderExtension(item:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(a3 + 40) == 1)
    {
      v7 = *a3;
      v8 = Strong;
      v9 = a4;
      outlined init with copy of DOCSidebarItem(a3, v20);
      specialized DOCDocumentSource.setHidden(hidden:completion:)(0, v7, v8, v9, a3);
      outlined destroy of DOCSidebarItem(a3);
    }

    else
    {
      v10 = Strong;
      v11 = a4;
      outlined init with copy of DOCSidebarItem(a3, v20);
      DOCSourceVisibilityController.addVisitedSource(source:)(v11);
      v12 = (*((*MEMORY[0x277D85000] & *v10) + 0x1E8))();
      if (v12)
      {
        v18 = v12;
        v19 = DOCSidebarItem.representedLocation.getter(v12, v13, v14, v15, v16, v17);
        [v18 sidebarViewController:v10 didSelect:v19];

        outlined destroy of DOCSidebarItem(a3);
        swift_unknownObjectRelease();
      }

      else
      {

        outlined destroy of DOCSidebarItem(a3);
      }
    }
  }
}

void closure #1 in closure #2 in DOCSidebarViewController.presentAlertToEnableProviderExtension(item:)(char a1, void *a2, DOCDocumentSource *source)
{
  DOCSourceVisibilityController.addVisitedSource(source:)(source);
  if ((a1 & 1) == 0)
  {
    v5 = (*((*MEMORY[0x277D85000] & *a2) + 0x1E8))();
    if (v5)
    {
      v11 = v5;
      v12 = DOCSidebarItem.representedLocation.getter(v5, v6, v7, v8, v9, v10);
      [v11 sidebarViewController:a2 didSelect:v12];

      swift_unknownObjectRelease();
    }
  }
}

void closure #1 in DOCSidebarViewController.configureItemSelectionPacer()()
{
  type metadata accessor for DOCSidebarViewController.DOCSidebarItemChangePacer(0);
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    v1 = v0;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(*v1 + 256);

      v4(&v14, v5);
      v6 = v19;
      if (v19 != 255)
      {
        v8 = v17;
        v7 = v18;
        v10 = v15;
        v9 = v16;
        v11 = v14;
        v20[0] = v14;
        v20[1] = v15;
        v20[2] = v16;
        v20[3] = v17;
        v20[4] = v18;
        v21 = v19;
        v12 = (*(*v1 + 408))(0, 0);
        v13 = (*(*v1 + 280))(v12);
        DOCSidebarViewController.commitSelectedItem(_:isUserSelection:)(v20, v13 & 1);
        outlined consume of DOCSidebarItem?(v11, v10, v9, v8, v7, v6);
      }
    }
  }
}

void DOCSidebarViewController.commitSelectedItem(_:isUserSelection:)(uint64_t a1, char a2)
{
  v3 = v2;
  v45 = *(a1 + 16);
  v46 = *a1;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *a1;
  if (v7 == 1)
  {
    if (([*a1 status] | 2) != 2)
    {
      DOCSidebarViewController.presentAlertToEnableProviderExtension(item:)(a1);

      outlined destroy of DOCSidebarItem(a1);
      return;
    }

    outlined destroy of DOCSidebarItem(a1);
  }

  v9 = (v2 + OBJC_IVAR___DOCSidebarViewController_pendingSelectionProviderDomainIdentifier);
  *v9 = 0;
  v9[1] = 0;

  v16 = MEMORY[0x277D85000];
  if (a2)
  {
    if (*(a1 + 40) == 1)
    {
      v17 = *a1;
      v18 = v8;
      v19 = [v17 searching_fileProviderDomain];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 error];
        outlined destroy of DOCSidebarItem(a1);

        if (v21)
        {
          v22 = DOCSidebarViewController.deselectSidebarItem(_:animated:)(a1, 0);
          (*((*v16 & *v3) + 0x4B8))(&v47, v22);
          if (v50 != 255)
          {
            v53 = v47;
            v54 = v48;
            v55 = v49;
            v56 = v50;
            DOCSidebarViewController.selectSidebarItem(_:scrollToVisible:animated:)(&v53, 0, 0);
            outlined destroy of CharacterSet?(&v47, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
          }

          v23 = _convertErrorToNSError(_:)();
          DOCPresentAlertForError();

          if (one-time initialization token for Sidebar != -1)
          {
            swift_once();
          }

          v24 = type metadata accessor for Logger();
          __swift_project_value_buffer(v24, static Logger.Sidebar);
          v25 = v21;
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v51[0] = v29;
            *v28 = 136315394;
            *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BEF070, v51);
            *(v28 + 12) = 2080;
            swift_getErrorValue();
            v30 = Error.localizedDescription.getter();
            v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v51);

            *(v28 + 14) = v32;
            _os_log_impl(&dword_2493AC000, v26, v27, "%s: Tapped on sidebar item with error: %s.", v28, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C1FE850](v29, -1, -1);
            MEMORY[0x24C1FE850](v28, -1, -1);
          }

          else
          {
          }

          return;
        }
      }

      else
      {
        v10 = outlined destroy of DOCSidebarItem(a1);
      }
    }

    v33 = DOCSidebarItem.representedLocation.getter(v10, v11, v12, v13, v14, v15);
    v34 = [v33 isFPV2];

    if (v34)
    {
      v53 = v46;
      v54 = v45;
      v55 = v6;
      v56 = v7;
      v35 = *((*v16 & *v3) + 0x4C0);
      outlined init with copy of DOCSidebarItem(a1, &v47);
      v10 = v35(&v53);
    }

    else
    {
      v36 = DOCSidebarViewController.deselectSidebarItem(_:animated:)(a1, 0);
      v10 = (*((*v16 & *v3) + 0x4B8))(&v47, v36);
      if (v50 != 255)
      {
        v53 = v47;
        v54 = v48;
        v55 = v49;
        v56 = v50;
        DOCSidebarViewController.selectSidebarItem(_:scrollToVisible:animated:)(&v53, 0, 0);
        v10 = outlined destroy of CharacterSet?(&v47, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
      }
    }
  }

  v37 = (*((*v16 & *v3) + 0x1E8))(v10);
  if (v37)
  {
    v43 = v37;
    v44 = DOCSidebarItem.representedLocation.getter(v37, v38, v39, v40, v41, v42);
    [v43 sidebarViewController:v3 didSelect:v44];

    swift_unknownObjectRelease();
  }

  if (*(a1 + 40) == 2)
  {
    v51[0] = 0xD000000000000036;
    v51[1] = 0x8000000249BE43E0;
    v51[2] = 0;
    v51[3] = 0;
    v52 = a2 & 1;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    specialized DOCAnalyticsManager.sendEvent(_:)(v51, static DOCAnalyticsManager.shared);
    outlined destroy of DOCAnalyticsSidebarTagSelectedEvent(v51);
  }
}

uint64_t closure #2 in DOCSidebarViewController.configureItemSelectionPacer()()
{
  type metadata accessor for DOCSidebarViewController.DOCSidebarItemChangePacer(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v1 = result;
    v2 = *(*result + 400);

    v4 = v2(v3);
    (*(*v1 + 408))(0, 0);
    if (v4)
    {

      v4(v5);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4);
    }
  }

  return result;
}

BOOL static DOCSidebarViewController.PresentationContext.== infix(_:_:)(int a1, int a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCSidebarViewController.PresentationContext(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v4 ^ v2 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

uint64_t closure #1 in DOCSidebarViewController.sidebarItem(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  v7 = DOCSidebarItem.representedLocation.getter(a1, a2, a3, a4, a5, a6);
  LOBYTE(v6) = DOCConcreteLocation.matchesSelectedSidebarLocation(_:)(v6);

  return v6 & 1;
}

Swift::Bool __swiftcall DOCSidebarViewController.scrollViewShouldScrollToTop(_:)(UIScrollView *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DOCSidebarViewController(0);
  v2 = [(UIScrollView *)&v6 collectionView];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for DOCSidebarCollectionView();
    v4 = [swift_dynamicCastClassUnconditional() hasUncommittedUpdates];

    LOBYTE(v2) = v4 ^ 1;
  }

  else
  {
    __break(1u);
  }

  return v2;
}

void DOCSidebarViewController.sidebarItemCell(_:didUpdateSourceIsEnabledTo:)(void *a1, char a2)
{
  DOCSidebarViewController.sidebarItem(for:)(a1, v10);
  v4 = v12;
  if (v12 != 255)
  {
    v13[0] = v10[0];
    v13[1] = v10[1];
    v14 = v11;
    v15 = v12;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (v4 == 1)
    {
      v6 = *&v13[0];
      v7 = a1;
      specialized DOCDocumentSource.setHidden(hidden:completion:)((a2 & 1) == 0, v6, v5, v13, v7);

      outlined destroy of CharacterSet?(v10, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    }

    else
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v9 = a1;
      if (Strong)
      {

        outlined destroy of CharacterSet?(v10, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
      }

      else
      {

        outlined destroy of CharacterSet?(v10, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
      }
    }
  }
}

void closure #1 in DOCSidebarViewController.sidebarItemCell(_:didUpdateSourceIsEnabledTo:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(a3 + 40) == 1)
    {
      v7 = *a3;
      outlined init with copy of DOCSidebarItem(a3, v9);

      DOCSourceVisibilityController.addVisitedSource(source:)(v7);

      outlined destroy of DOCSidebarItem(a3);
    }

    if (a1)
    {

      v8 = DOCSidebarItem.isEnabled(sourceVisibilityController:)();

      DOCSidebarItemCell.sourceIsEnabled.setter(v8);
    }
  }
}

uint64_t DOCSidebarViewController.sidebarItemCellDidBeginEditingTitle(_:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v15 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v7, v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x428))(v10);
  if (result)
  {
    v14 = result;
    DOCSidebarViewController.indexPath(for:)(a1, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      return outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd);
    }

    else
    {
      (*(v8 + 32))(v12, v6, v7);
      DOCSidebarViewController.sidebarItem(at:logIfMissing:)(v12, 1, v15);
      if (v17 == 255)
      {
        (*(v8 + 8))(v12, v7);
      }

      else
      {
        v18[0] = v15[0];
        v18[1] = v15[1];
        v19 = v16;
        v20 = v17;
        (*(*v14 + 160))(a1, v18);
        DOCSidebarViewController.deselectAllSidebarItems()();

        outlined destroy of CharacterSet?(v15, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
        return (*(v8 + 8))(v12, v7);
      }
    }
  }

  return result;
}

uint64_t DOCSidebarViewController.shouldBeginUpdateTitle(on:)(uint64_t a1)
{
  v2 = direct field offset for DOCSidebarItemCell.itemTag;
  swift_beginAccess();
  if (*(a1 + v2))
  {
    return 1;
  }

  v3 = direct field offset for DOCSidebarItemCell.isRepresentingFolder;
  swift_beginAccess();
  if (*(a1 + v3))
  {
    return 1;
  }

  v5 = direct field offset for DOCSidebarItemCell.isRepresentingUSB;
  swift_beginAccess();
  return *(a1 + v5);
}

uint64_t protocol witness for DOCSidebarItemCellDelegate.shouldBeginUpdateTitle(on:) in conformance DOCSidebarViewController(uint64_t a1)
{
  v2 = direct field offset for DOCSidebarItemCell.itemTag;
  swift_beginAccess();
  if (*(a1 + v2))
  {
    return 1;
  }

  v3 = direct field offset for DOCSidebarItemCell.isRepresentingFolder;
  swift_beginAccess();
  if (*(a1 + v3) == 1)
  {
    return 1;
  }

  v5 = direct field offset for DOCSidebarItemCell.isRepresentingUSB;
  swift_beginAccess();
  return *(a1 + v5);
}

void *closure #1 in static DOCSidebarViewController.fetchTrashItems(from:completionHandler:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result trashObserver];
    if (v2)
    {
      v3 = v2;
      v4 = [v1 trashSubscriber];
      if (v4)
      {
        v5 = v4;
        [v3 removeSubscriber_];

        v3 = v5;
      }
    }

    [v1 setTrashObserver_];
    [v1 setTrashSubscriber_];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [NSLayoutConstraint] and conformance [A], &_sSaySo18NSLayoutConstraintCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18NSLayoutConstraintCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCSmartFolderHit] and conformance [A], &_sSaySo17DOCSmartFolderHitCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17DOCSmartFolderHitCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCSmartFolderHit);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCBrowserContainerController] and conformance [A], &_sSay26DocumentManagerExecutables29DOCBrowserContainerControllerCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables29DOCBrowserContainerControllerCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for DOCBrowserContainerController();
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCFileProviderSource] and conformance [A], &_sSay26DocumentManagerExecutables21DOCFileProviderSourceCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables21DOCFileProviderSourceCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for DOCFileProviderSource();
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCNode] and conformance [A], &_sSaySo7DOCNode_pGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [UIBarButtonItem] and conformance [A], &_sSaySo15UIBarButtonItemCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15UIBarButtonItemCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [UIDocumentBrowserAction] and conformance [A], &_sSaySo23UIDocumentBrowserActionCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23UIDocumentBrowserActionCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCConcreteLocation] and conformance [A], &_sSaySo19DOCConcreteLocationCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo19DOCConcreteLocationCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [FINode] and conformance [A], &_sSaySo6FINodeCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6FINodeCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [FPItem] and conformance [A], &_sSaySo6FPItemCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6FPItemCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [UIViewController] and conformance [A], &_sSaySo16UIViewControllerCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16UIViewControllerCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCItemCollectionViewController] and conformance [A], &_sSay26DocumentManagerExecutables31DOCItemCollectionViewControllerCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables31DOCItemCollectionViewControllerCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for DOCItemCollectionViewController(0);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [UIKeyCommand] and conformance [A], &_sSaySo12UIKeyCommandCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12UIKeyCommandCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCDocumentSource] and conformance [A], &_sSaySo17DOCDocumentSourceCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17DOCDocumentSourceCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [UITab] and conformance [A], &_sSaySo5UITabCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo5UITabCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCSearchSuggestion] and conformance [A], &_sSay26DocumentManagerExecutables19DOCSearchSuggestionCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables19DOCSearchSuggestionCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for DOCSearchSuggestion();
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCHotFolderEvent] and conformance [A], &_sSaySo17DOCHotFolderEventCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17DOCHotFolderEventCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCHotFolderEvent);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DSLightweightTagInfo] and conformance [A], &_sSay17DesktopServicesUI20DSLightweightTagInfoCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17DesktopServicesUI20DSLightweightTagInfoCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for DSLightweightTagInfo();
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCGoToRecentLocation] and conformance [A], &_sSay26DocumentManagerExecutables21DOCGoToRecentLocationCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables21DOCGoToRecentLocationCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for DOCGoToRecentLocation();
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [UIMenuElement] and conformance [A], &_sSaySo13UIMenuElementCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13UIMenuElementCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCTag] and conformance [A], &_sSaySo6DOCTagCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6DOCTagCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCActionManager] and conformance [A], &_sSaySo16DOCActionManagerCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16DOCActionManagerCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for DOCActionManager(0);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [UIFocusEnvironment] and conformance [A], &_sSaySo18UIFocusEnvironment_pGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18UIFocusEnvironment_pGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCItemBookmark] and conformance [A], &_sSaySo15DOCItemBookmarkCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15DOCItemBookmarkCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCItemBookmark);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCRemoteBarButton] and conformance [A], &_sSaySo18DOCRemoteBarButtonCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18DOCRemoteBarButtonCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCRemoteBarButton);
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

void specialized static DOCSidebarViewController.fetchTrashItems(from:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = [objc_opt_self() defaultManager];
  v8 = [v7 newTrashCollection];

  v9 = [objc_allocWithZone(MEMORY[0x277D06210]) initWithItemCollection_];
  [a1 setTrashObserver_];
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = partial apply for closure #1 in static DOCSidebarViewController.fetchTrashItems(from:completionHandler:);
  v10[5] = v6;
  v13[4] = partial apply for closure #2 in static DOCSidebarViewController.fetchTrashItems(from:completionHandler:);
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed [FPItem]) -> ();
  v13[3] = &block_descriptor_284;
  v11 = _Block_copy(v13);

  v12 = [v9 addSubscriber_];
  _Block_release(v11);
  [a1 setTrashSubscriber_];
}

uint64_t _s26DocumentManagerExecutables24DOCSidebarViewControllerC11sidebarItem3forAA0dH0OSgSo19DOCConcreteLocationCSg_tFSbAGXEfU_TA_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 16);
  v8 = DOCSidebarItem.representedLocation.getter(a1, a2, a3, a4, a5, a6);
  LOBYTE(v7) = DOCConcreteLocation.matchesSelectedSidebarLocation(_:)(v7);

  return v7 & 1;
}

uint64_t specialized DOCSidebarViewController.sidebarItemCell(_:didUpdateTitleTo:)()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x428);
  result = v1();
  if (result)
  {
    (*(*result + 136))(v5);
    if (v6 == 255)
    {
    }

    else
    {
      outlined destroy of CharacterSet?(v5, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
      v3 = DOCSidebarViewController.finishEditing(force:)(0);
      v4 = (v1)(v3);
      if (v4)
      {
        (*(*v4 + 168))();
        DOCSidebarViewController.reflectCurrentLocationToSelectedInSidebar(scrollToVisible:forAppearance:)(0, 0);
      }
    }
  }

  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = __CocoaSet.count.getter();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in DOCSidebarViewController.updateTopItemsSection()(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = OBJC_IVAR___DOCSidebarViewController__mutableSectionsData;
  v7 = *(**(a1 + OBJC_IVAR___DOCSidebarViewController__mutableSectionsData) + 192);

  LOBYTE(v7) = v7(v8);

  v9 = *a2;
  v10 = v7 ^ v9;
  if (v10)
  {
    v11 = *(**(a1 + v6) + 200);

    v11(v9);
  }

  v12 = *(**(a1 + v6) + 216);

  LODWORD(v12) = v12(v13) & 1;

  v14 = *a3;
  if (v12 != v14)
  {
    v15 = *(**(a1 + v6) + 224);

    v15(v14);

    v10 = 1;
  }

  return v10 & 1;
}

void specialized DOCSidebarViewController.collectionView(_:didSelectItemAt:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v33[-1] - v7;
  DOCSidebarViewController.diffableSnapshot()();
  specialized NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)(v34);
  (*(v5 + 8))(v8, v4);
  if (!v34[0])
  {
LABEL_4:
    DOCSidebarViewController.sidebarItem(at:logIfMissing:)(a1, 1, v37);
    if (v39 != 255)
    {
      v40 = v37[0];
      v41[0] = v37[1];
      *&v41[1] = v38;
      BYTE8(v41[1]) = v39;
      v9 = MEMORY[0x277D85000];
      v10 = *((*MEMORY[0x277D85000] & *v1) + 0x428);
      v11 = v10();
      if (v11)
      {
        v12 = (*(*v11 + 112))();
        if (v12)
        {
          v13 = v12;
          DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
          v14 = *&v13[direct field offset for DOCSidebarItemCell._inlineEditingTextField];
          v15 = v14;

          if (v14)
          {
            if (([v15 isHidden] & 1) == 0)
            {
              v16 = DOCSidebarViewController.finishEditing(force:)(0);
              v17 = (v10)(v16);
              if (v17)
              {
                (*(*v17 + 168))();
                DOCSidebarViewController.reflectCurrentLocationToSelectedInSidebar(scrollToVisible:forAppearance:)(0, 0);
              }
            }
          }
        }
      }

      v18 = *(v2 + OBJC_IVAR___DOCSidebarViewController_locationSelection);

      v25 = DOCSidebarItem.representedLocation.getter(v19, v20, v21, v22, v23, v24);
      v26 = *(v18 + 24);
      *(v18 + 24) = v25;

      v27 = (*((*v9 & *v2) + 0x488))();
      v32 = v40;
      v33[0] = v41[0];
      *(v33 + 9) = *(v41 + 9);
      (*(*v27 + 312))(&v32, 1);

      outlined destroy of CharacterSet?(v37, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    }

    return;
  }

  v42 = v35;
  *v43 = v36[0];
  *&v43[9] = *(v36 + 9);
  v44[0] = v34[0];
  v44[1] = v34[1];
  outlined destroy of DOCSidebarViewController.OutlineSection(v44);
  if (v43[24] != 255)
  {
    outlined destroy of CharacterSet?(&v42, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    goto LABEL_4;
  }

  if (DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(a1, 0))
  {
    v29 = v28;
    ObjectType = swift_getObjectType();
    v31 = (*(v29 + 16))(ObjectType, v29);
    DOCSidebarViewController.changeExpanded(ofSection:to:reload:)(v31, 1, 1);
    swift_unknownObjectRelease();
  }
}

unint64_t lazy protocol witness table accessor for type DOCSidebarViewController.MutationReloadRequest and conformance DOCSidebarViewController.MutationReloadRequest()
{
  result = lazy protocol witness table cache variable for type DOCSidebarViewController.MutationReloadRequest and conformance DOCSidebarViewController.MutationReloadRequest;
  if (!lazy protocol witness table cache variable for type DOCSidebarViewController.MutationReloadRequest and conformance DOCSidebarViewController.MutationReloadRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarViewController.MutationReloadRequest and conformance DOCSidebarViewController.MutationReloadRequest);
  }

  return result;
}

void type metadata completion function for DOCSidebarViewController()
{
  type metadata accessor for IndexPath?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of DOCSidebarViewController.currentlySelectedSidebarItem.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x4C0);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v2;
  v9 = v3;
  return v4(v7);
}

uint64_t dispatch thunk of DOCSidebarViewController.EditingSession.editingSidebarItem.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*v1 + 144);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v2;
  v9 = v3;
  return v4(v7);
}

uint64_t dispatch thunk of DOCSidebarViewController.EditingSession.setEditingCell(_:item:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *(*v2 + 160);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v9 = v3;
  v10 = v4;
  return v5(a1, v8);
}

uint64_t partial apply for closure #1 in closure #1 in DOCSidebarViewController.menuButtonItem.getter(void (*a1)(void))
{
  fetchMenuItems #1 () in closure #1 in DOCSidebarViewController.menuButtonItem.getter();
  a1();
}

uint64_t objectdestroy_30Tm_3(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t partial apply for closure #2 in static DOCSidebarViewController.fetchTrashItems(from:completionHandler:)()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 16))();
  return v1(v2);
}

SEL *NSProgress.totalUnitMb.setter(SEL *result, double a2)
{
  v3 = a2 * 1000000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 9.22337204e18)
  {
    return [v2 *result];
  }

LABEL_7:
  __break(1u);
  return result;
}

id *(*NSProgress.totalUnitMb.modify(uint64_t a1))(id *a1, char a2)
{
  *(a1 + 8) = v1;
  *a1 = [v1 totalUnitCount] / 1000000.0;
  return NSProgress.totalUnitMb.modify;
}

double *key path setter for NSProgress.totalUnitMb : NSProgress(double *result, id *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v5 = *result * 1000000.0;
  if (COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.22337204e18)
  {
    return [*a2 *a5];
  }

LABEL_7:
  __break(1u);
  return result;
}

id *(*NSProgress.completedUnitMb.modify(uint64_t a1))(id *a1, char a2)
{
  *(a1 + 8) = v1;
  *a1 = [v1 completedUnitCount] / 1000000.0;
  return NSProgress.completedUnitMb.modify;
}

id *NSProgress.totalUnitMb.modify(id *result, char a2, SEL *a3)
{
  v3 = *result * 1000000.0;
  v4 = fabs(v3);
  v5 = v4 <= 0x7FEFFFFFFFFFFFFFLL;
  if (a2)
  {
    if (v4 > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if (v3 <= -9.22337204e18)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v5 = v3 <= 9.22337204e18;
    if (v3 < 9.22337204e18)
    {
      return [result[1] *a3];
    }

    __break(1u);
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v3 < 9.22337204e18)
  {
    return [result[1] *a3];
  }

LABEL_15:
  __break(1u);
  return result;
}

id static DOCProgressUI.progressPanelTitle.getter()
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v1 = result;
    v6._object = 0x8000000249BEF280;
    v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v2.value._object = 0xEB00000000656C62;
    v3._countAndFlagsBits = 0x73736572676F7250;
    v4._object = 0x8000000249BEF260;
    v6._countAndFlagsBits = 0xD000000000000040;
    v4._countAndFlagsBits = 0xD00000000000001CLL;
    v3._object = 0xE800000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v2, v1, v3, v6)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    __break(1u);
  }

  return result;
}

objc_class *specialized static DOCProgressUI.preparingToStartMessage(forOperation:)(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
LABEL_7:
      result = _DocumentManagerBundle();
      if (result)
      {
        v8 = result;
        v18 = 0x8000000249BEF300;
        v9 = 0x617A696C61636F4CLL;
        v10 = 0xEB00000000656C62;
        v11 = 0x6E69726170657250;
        v12 = 0xAC000000A680E267;
        v13 = 0xD00000000000005ALL;
        v14.super.isa = v8;
        v15 = 0x6E69726170657250;
        v16 = 0xAC000000A680E267;
LABEL_12:
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, *&v9, v14, *&v15, *&v13)._countAndFlagsBits;

        return countAndFlagsBits;
      }

      __break(1u);
      goto LABEL_14;
    }
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v8 = result;
    v18 = 0x8000000249BEF380;
    v9 = 0x617A696C61636F4CLL;
    v10 = 0xEB00000000656C62;
    v12 = 0x8000000249BEF360;
    v16 = 0x8000000249BEF360;
    v11 = 0x1000000000000014;
    v14.super.isa = v8;
    v15 = 0x1000000000000014;
    v13 = 0xD000000000000047;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *DOCColumnViewCell.browserContainerController.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void key path setter for DOCColumnViewCell.browserContainerController : DOCColumnViewCell(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  DOCColumnViewCell.browserContainerController.didset(v5);
}

void DOCColumnViewCell.browserContainerController.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  DOCColumnViewCell.browserContainerController.didset(v4);
}

void DOCColumnViewCell.browserContainerController.didset(id a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5)
  {
    if (!a1)
    {
      goto LABEL_9;
    }

    type metadata accessor for DOCBrowserContainerController();
    v6 = v5;
    a1 = a1;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = a1;
  if (DOCColumnViewCell.isBrowserContainerControllerStillOwnedByUs(_:)(v8))
  {
    v9 = v8;
    [v9 doc:0 removeFromParentWithRemoveSubviewBlock:?];
    v10 = [v9 viewIfLoaded];

    [v10 removeFromSuperview];
  }

  v5 = *&v2[v4];
  if (v5)
  {
LABEL_9:
    v11 = v5;
    v12 = [v2 contentView];
    v13 = v11;
    v14 = [v13 view];
    if (v14)
    {
      v15 = v14;
      [v12 addSubview_];

      v16 = [v13 view];
      if (v16)
      {
        v17 = [v2 contentView];
        [v17 bounds];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        [v16 setFrame_];
        DOCColumnViewCell.updateSeparatorView()();
        DOCColumnViewCell.updatePreferredFocusCell(_:)(0);

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

uint64_t DOCColumnViewCell.isBrowserContainerControllerStillOwnedByUs(_:)(void *a1)
{
  v2 = [a1 viewIfLoaded];
  v3 = [v2 superview];

  v4 = [v1 contentView];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
      v6 = static NSObject.== infix(_:_:)();
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      v6 = 1;
      return v6 & 1;
    }

    v6 = 0;
    v3 = v4;
  }

  return v6 & 1;
}

void DOCColumnViewCell.updateSeparatorView()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_separatorView;
  v3 = [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_separatorView] superview];
  if (!v3 || (v4 = v3, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView), v5 = v0, v6 = static NSObject.== infix(_:_:)(), v4, v5, (v6 & 1) == 0))
  {
    v7 = [v1 contentView];
    [v7 addSubview_];
  }

  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in DOCColumnViewCell.updateSeparatorView();
  *(v10 + 24) = v9;
  v14[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v14[5] = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed () -> ();
  v14[3] = &block_descriptor_116;
  v11 = _Block_copy(v14);
  v12 = v1;

  [v8 performWithoutAnimation_];
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v13 = [v12 contentView];
    [v13 bringSubviewToFront_];
  }
}

Swift::Void __swiftcall DOCColumnViewCell.updatePreferredFocusCell(_:)(UICollectionViewCell_optional *a1)
{
  v2 = v1;
  if (a1)
  {
    type metadata accessor for DOCItemCollectionCell();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = a1;
    }

    v6 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_navigationFocusGuide;
    swift_beginAccess();
    v7 = *&v2[v6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_249BA0290;
    *(v8 + 32) = a1;
    v9 = a1;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v10 setPreferredFocusEnvironments_];

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.UI);
    v13 = v4;
    v14 = v9;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v15, v16))
    {

      return;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v107[0] = v19;
    *v17 = 136315650;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BEF3D0, v107);
    *(v17 + 12) = 2112;
    *(v17 + 14) = v14;
    *v18 = a1;
    *(v17 + 22) = 2080;
    if (v4)
    {
      v20 = (*((*MEMORY[0x277D85000] & *v13) + 0x208))(v14);
      if (v20)
      {
        v21 = v20;
        v22 = (*((*MEMORY[0x277D85000] & *v20) + 0x640))();
        v24 = v23;

        v25 = v22;
LABEL_22:
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, v107);

        *(v17 + 24) = v49;
        _os_log_impl(&dword_2493AC000, v15, v16, "%s 1 found cell provided: %@. %s", v17, 0x20u);
        outlined destroy of NSObject?(v18);
        MEMORY[0x24C1FE850](v18, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v19, -1, -1);
        MEMORY[0x24C1FE850](v17, -1, -1);

        return;
      }
    }

    else
    {
      v48 = v14;
    }

    v24 = 0xE900000000000065;
    v25 = 0x6C746974206C696ELL;
    goto LABEL_22;
  }

  v26 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
  swift_beginAccess();
  v27 = *&v1[v26];
  if (v27)
  {
    v28 = MEMORY[0x277D85000];
    v29 = *((*MEMORY[0x277D85000] & *v27) + 0xE8);
    v30 = v27;
    v31 = v29();

    if (v31)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v32 = swift_dynamicCastClass();
      if (v32)
      {
        v33 = v32;
        v34 = (*((*v28 & *v32) + 0xC98))();
        if (v34)
        {
          v35 = v34;
          if (one-time initialization token for UI != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          __swift_project_value_buffer(v36, static Logger.UI);
          v37 = v35;
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v107[0] = v41;
            *v40 = 136315394;
            *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BEF3D0, v107);
            *(v40 + 12) = 2080;
            v42 = (*((*v28 & *v37) + 0x208))();
            if (v42)
            {
              v43 = *((*v28 & *v42) + 0x640);
              v44 = v42;
              v45 = v43();
              v47 = v46;
            }

            else
            {
              v45 = 0x6C746974206C696ELL;
              v47 = 0xE900000000000065;
            }

            v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v107);

            *(v40 + 14) = v86;
            _os_log_impl(&dword_2493AC000, v38, v39, "%s 2 itemCollectionVC found preferredFocusCell cell: %s", v40, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C1FE850](v41, -1, -1);
            MEMORY[0x24C1FE850](v40, -1, -1);
          }

          v87 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_navigationFocusGuide;
          swift_beginAccess();
          v88 = *&v2[v87];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v89 = swift_allocObject();
          *(v89 + 16) = xmmword_249BA0290;
          *(v89 + 32) = v37;
          v90 = v37;
          v91 = v88;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
          v92 = Array._bridgeToObjectiveC()().super.isa;

          [v91 setPreferredFocusEnvironments_];

LABEL_50:
          return;
        }

        v58 = (*((*v28 & *v33) + 0x1268))();
        if (v58)
        {
          v59 = v58;
          if (one-time initialization token for UI != -1)
          {
            swift_once();
          }

          v60 = type metadata accessor for Logger();
          __swift_project_value_buffer(v60, static Logger.UI);
          swift_unknownObjectRetain();
          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.error.getter();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v107[0] = v64;
            *v63 = 136315394;
            *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BEF3D0, v107);
            *(v63 + 12) = 2080;
            v106 = v59;
            swift_unknownObjectRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
            v65 = String.init<A>(describing:)();
            v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v107);

            *(v63 + 14) = v67;
            _os_log_impl(&dword_2493AC000, v61, v62, "%s 2 itemCollectionVC found selectedChildNode but preferredFocusCell was nil. This is an error. Node: %s", v63, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C1FE850](v64, -1, -1);
            MEMORY[0x24C1FE850](v63, -1, -1);

            swift_unknownObjectRelease();
            return;
          }

          swift_unknownObjectRelease();

          goto LABEL_50;
        }

        v68 = *((*v28 & *v33) + 0xCB8);
        v69 = v68();
        if (v69 >> 62)
        {
          v70 = __CocoaSet.count.getter();
        }

        else
        {
          v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v70 < 1)
        {
          if (one-time initialization token for UI != -1)
          {
            swift_once();
          }

          v93 = type metadata accessor for Logger();
          __swift_project_value_buffer(v93, static Logger.UI);
          v94 = Logger.logObject.getter();
          v95 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v107[0] = v97;
            *v96 = 136315138;
            *(v96 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BEF3D0, v107);
            _os_log_impl(&dword_2493AC000, v94, v95, "%s 4 itemCollectionVC found no cell", v96, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v97);
            MEMORY[0x24C1FE850](v97, -1, -1);
            MEMORY[0x24C1FE850](v96, -1, -1);
          }

          v98 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_navigationFocusGuide;
          swift_beginAccess();
          v99 = *&v2[v98];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
          v100 = Array._bridgeToObjectiveC()().super.isa;
          [v99 setPreferredFocusEnvironments_];

          goto LABEL_50;
        }

        v72 = (v68)(v71);
        v73 = v72;
        if (v72 >> 62)
        {
          if (__CocoaSet.count.getter())
          {
LABEL_39:
            if ((v73 & 0xC000000000000001) == 0)
            {
              if (!*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_67:
                swift_once();
LABEL_44:
                v81 = type metadata accessor for Logger();
                __swift_project_value_buffer(v81, static Logger.UI);
                v82 = Logger.logObject.getter();
                v83 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v82, v83))
                {
                  v84 = swift_slowAlloc();
                  v85 = swift_slowAlloc();
                  v106 = v85;
                  *v84 = 136315138;
                  *(v84 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BEF3D0, &v106);
                  _os_log_impl(&dword_2493AC000, v82, v83, "%s 3.1 itemCollectionVC found the first cell", v84, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v85);
                  MEMORY[0x24C1FE850](v85, -1, -1);
                  MEMORY[0x24C1FE850](v84, -1, -1);
                }

                return;
              }

              v74 = *(v73 + 32);
              swift_unknownObjectRetain();
LABEL_42:

              v75 = (*((*v28 & *v33) + 0x18D0))(v74);
              swift_unknownObjectRelease();
              if (!v75)
              {
                if (one-time initialization token for UI != -1)
                {
                  swift_once();
                }

                v101 = type metadata accessor for Logger();
                __swift_project_value_buffer(v101, static Logger.UI);
                v102 = Logger.logObject.getter();
                v103 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v102, v103))
                {
                  v104 = swift_slowAlloc();
                  v105 = swift_slowAlloc();
                  v107[0] = v105;
                  *v104 = 136315138;
                  *(v104 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BEF3D0, v107);
                  _os_log_impl(&dword_2493AC000, v102, v103, "%s 3.2 itemCollectionVC found no cell", v104, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v105);
                  MEMORY[0x24C1FE850](v105, -1, -1);
                  MEMORY[0x24C1FE850](v104, -1, -1);
                }

                goto LABEL_50;
              }

              v76 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_navigationFocusGuide;
              swift_beginAccess();
              v77 = *&v2[v76];
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
              v78 = swift_allocObject();
              *(v78 + 16) = xmmword_249BA0290;
              *(v78 + 32) = v75;
              v79 = v77;
              v2 = v75;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
              v80 = Array._bridgeToObjectiveC()().super.isa;

              [v79 setPreferredFocusEnvironments_];

              if (one-time initialization token for UI == -1)
              {
                goto LABEL_44;
              }

              goto LABEL_67;
            }

LABEL_65:
            v74 = MEMORY[0x24C1FC540](0, v73);
            goto LABEL_42;
          }
        }

        else if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        __break(1u);
        goto LABEL_65;
      }
    }
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static Logger.UI);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v107[0] = v54;
    *v53 = 136315138;
    *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BEF3D0, v107);
    _os_log_impl(&dword_2493AC000, v51, v52, "%s 5 itemCollectionVC found no cell", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x24C1FE850](v54, -1, -1);
    MEMORY[0x24C1FE850](v53, -1, -1);
  }

  v55 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_navigationFocusGuide;
  swift_beginAccess();
  v56 = *&v2[v55];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
  v57 = Array._bridgeToObjectiveC()().super.isa;
  [v56 setPreferredFocusEnvironments_];
}

void (*DOCColumnViewCell.browserContainerController.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCColumnViewCell.browserContainerController.modify;
}

void DOCColumnViewCell.browserContainerController.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    DOCColumnViewCell.browserContainerController.didset(v8);

    v8 = *v5;
  }

  else
  {
    DOCColumnViewCell.browserContainerController.didset(v8);
  }

  free(v3);
}

id DOCColumnViewCell.navigationFocusGuide.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_navigationFocusGuide;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCColumnViewCell.navigationFocusGuide.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_navigationFocusGuide;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DOCColumnViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *DOCColumnViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController] = 0;
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_navigationFocusGuide;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_separatorView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D063B8]) init];
  v35.receiver = v4;
  v35.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v35, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v14 = v12;
  v15 = [v13 init];
  [v14 setBackgroundView_];

  [v14 setClipsToBounds_];
  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_navigationFocusGuide;
  swift_beginAccess();
  [v14 addLayoutGuide_];
  v17 = *&v14[v16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v17 setPreferredFocusEnvironments_];

  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_249BA0470;
  v21 = [*&v14[v16] leadingAnchor];
  v22 = [v14 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v20 + 32) = v23;
  v24 = [*&v14[v16] trailingAnchor];
  v25 = [v14 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v20 + 40) = v26;
  v27 = [*&v14[v16] topAnchor];
  v28 = [v14 topAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v20 + 48) = v29;
  v30 = [*&v14[v16] bottomAnchor];
  v31 = [v14 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v20 + 56) = v32;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  v33 = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints_];

  [v14 setHoverStyle_];
  return v14;
}

id DOCColumnViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t DOCColumnViewCell.init(coder:)(void *a1)
{
  v2 = specialized DOCColumnViewCell.init(coder:)(a1);

  return v2;
}

Swift::Void __swiftcall DOCColumnViewCell.layoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v0 frame];
    [v4 setFrame_];

LABEL_4:
    DOCColumnViewCell.updateSeparatorView()();
    DOCColumnViewCell.updatePreferredFocusCell(_:)(0);
    return;
  }

  __break(1u);
}

id DOCColumnViewCell.performSeparatorLayout()()
{
  v1 = objc_opt_self();
  v2 = [v0 traitCollection];
  [v1 separatorThicknessForTraitCollection_];
  v34 = v3;

  [v0 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_separatorView;
  [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_separatorView] frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  if ([v0 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v21 = 0.0;
    v22 = v11;
    v23 = v9;
    v24 = v7;
    v25 = v5;
  }

  else
  {
    v36.origin.x = v5;
    v36.origin.y = v7;
    v36.size.width = v9;
    v36.size.height = v11;
    MaxX = CGRectGetMaxX(v36);
    v27 = v14;
    v22 = v11;
    v23 = v9;
    v24 = v7;
    v25 = v5;
    v28 = MaxX;
    v37.origin.x = v27;
    v37.origin.y = v16;
    v37.size.width = v18;
    v37.size.height = v20;
    v21 = v28 - CGRectGetWidth(v37);
  }

  [v0 safeAreaInsets];
  v30 = v29;
  v38.origin.x = v25;
  v38.origin.y = v24;
  v38.size.width = v23;
  v38.size.height = v22;
  Height = CGRectGetHeight(v38);
  v32 = *&v0[v12];

  return [v32 setFrame_];
}