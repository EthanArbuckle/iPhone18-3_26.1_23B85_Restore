@interface SFBrowsingAssistantCardItem
+ (id)consentCardWithNotNowHandler:(id)a3 continueHandler:(id)a4;
+ (id)entityCardWithSearchResult:(id)a3 webpageIdentifier:(id)a4 componentIdentifier:(id)a5 actionHandler:(id)a6;
+ (id)listenToPageActionForHandler:(id)a3 state:(unint64_t)a4;
+ (id)listenToPageCard;
+ (id)readerCardWithReaderContext:(id)a3 title:(id)a4 summary:(id)a5 disclaimer:(id)a6 contextMenuInteraction:(id)a7 showReaderHandler:(id)a8 listenToPageHandler:(id)a9 listenToPageActionState:(unint64_t)a10;
+ (id)readerOptionsCardWithReaderContext:(id)a3 dismissReaderHandler:(id)a4 listenToPageHandler:(id)a5 listenToPageActionState:(unint64_t)a6;
- (SFBrowsingAssistantCardItemObserving)observer;
- (SFReaderContext)readerContext;
- (UIAction)primaryAction;
- (UIAction)secondaryAction;
- (UIContextMenuInteraction)contextMenuInteraction;
- (UIView)customBodyView;
- (id)selectionHandler;
- (unint64_t)type;
- (void)notifyObserverCardDidUpdate;
- (void)setReaderContext:(id)a3;
- (void)setSelectionHandler:(id)a3;
- (void)setType:(unint64_t)a3;
@end

@implementation SFBrowsingAssistantCardItem

+ (id)consentCardWithNotNowHandler:(id)a3 continueHandler:(id)a4
{
  v5 = _Block_copy(a3);
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = _sSo27SFBrowsingAssistantCardItemC12MobileSafariE07consentC013notNowHandler08continueJ0AByyc_yyctFZ_0(sub_18BA2A9D8, v7, sub_18BA2A9D8, v8);

  return v9;
}

+ (id)entityCardWithSearchResult:(id)a3 webpageIdentifier:(id)a4 componentIdentifier:(id)a5 actionHandler:(id)a6
{
  v9 = _Block_copy(a6);
  if (a4)
  {
    v10 = sub_18BC20BD8();
    a4 = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v13 = objc_allocWithZone(SFBrowsingAssistantCardItem);
  v14 = a3;
  v15 = a5;
  v16 = [v13 init];
  [v16 setType_];
  v17 = sub_18BA4CAC8(v14, sub_18B837284, v12, v10, a4, v15);

  [v16 setCustomBodyView_];

  return v16;
}

+ (id)listenToPageCard
{
  v2 = [objc_allocWithZone(SFBrowsingAssistantCardItem) init];
  [v2 setType_];

  return v2;
}

+ (id)readerCardWithReaderContext:(id)a3 title:(id)a4 summary:(id)a5 disclaimer:(id)a6 contextMenuInteraction:(id)a7 showReaderHandler:(id)a8 listenToPageHandler:(id)a9 listenToPageActionState:(unint64_t)a10
{
  v15 = _Block_copy(a8);
  v16 = _Block_copy(a9);
  if (a4)
  {
    v27 = sub_18BC20BD8();
    a4 = v17;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v18 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v27 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v18 = sub_18BC20BD8();
  a5 = v19;
  if (a6)
  {
LABEL_4:
    a6 = sub_18BC20BD8();
    v21 = v20;
    goto LABEL_8;
  }

LABEL_7:
  v21 = 0;
LABEL_8:
  swift_unknownObjectRetain();
  v22 = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = v15;
  if (v16)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = v16;
    v16 = sub_18BA2A9D8;
  }

  else
  {
    v24 = 0;
  }

  swift_getObjCClassMetadata();
  v25 = static SFBrowsingAssistantCardItem.readerCard(readerContext:title:summary:disclaimer:contextMenuInteraction:showReaderHandler:listenToPageHandler:listenToPageActionState:)(a3, v27, a4, v18, a5, a6, v21, v22, sub_18BA2A9D8, v23, v16, v24, a10);
  sub_18B7B171C(v16);
  swift_unknownObjectRelease();

  return v25;
}

+ (id)readerOptionsCardWithReaderContext:(id)a3 dismissReaderHandler:(id)a4 listenToPageHandler:(id)a5 listenToPageActionState:(unint64_t)a6
{
  v8 = _Block_copy(a4);
  v9 = _Block_copy(a5);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    v9 = sub_18BA2A9D8;
  }

  else
  {
    v11 = 0;
  }

  swift_getObjCClassMetadata();
  v12 = swift_unknownObjectRetain();
  v13 = static SFBrowsingAssistantCardItem.readerOptionsCard(readerContext:dismissReaderHandler:listenToPageHandler:listenToPageActionState:)(v12, sub_18BA2A9D8, v10, v9, v11, a6);
  sub_18B7B171C(v9);
  swift_unknownObjectRelease();

  return v13;
}

+ (id)listenToPageActionForHandler:(id)a3 state:(unint64_t)a4
{
  v5 = _Block_copy(a3);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_18BA2A69C;
  }

  else
  {
    v6 = 0;
  }

  v7 = _sSo27SFBrowsingAssistantCardItemC12MobileSafariE18listenToPageAction10forHandler5stateSo8UIActionCSgyycSg_So08SFReaderc6ListenhiJ5StateVtFZ_0(v5, v6, a4);
  sub_18B7B171C(v5);

  return v7;
}

- (UIContextMenuInteraction)contextMenuInteraction
{
  v3 = OBJC_IVAR___SFBrowsingAssistantCardItem_contextMenuInteraction;
  swift_beginAccess();
  return *(self + v3);
}

- (UIView)customBodyView
{
  v3 = OBJC_IVAR___SFBrowsingAssistantCardItem_customBodyView;
  swift_beginAccess();
  return *(self + v3);
}

- (UIAction)primaryAction
{
  v3 = OBJC_IVAR___SFBrowsingAssistantCardItem_primaryAction;
  swift_beginAccess();
  return *(self + v3);
}

- (SFReaderContext)readerContext
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setReaderContext:(id)a3
{
  v5 = OBJC_IVAR___SFBrowsingAssistantCardItem_readerContext;
  swift_beginAccess();
  *(self + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (UIAction)secondaryAction
{
  v3 = OBJC_IVAR___SFBrowsingAssistantCardItem_secondaryAction;
  swift_beginAccess();
  return *(self + v3);
}

- (id)selectionHandler
{
  v2 = (self + OBJC_IVAR___SFBrowsingAssistantCardItem_selectionHandler);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18B8370CC;
    aBlock[3] = &block_descriptor_39_0;
    v4 = _Block_copy(aBlock);
    sub_18BC1E1A8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSelectionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_18B83729C;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SFBrowsingAssistantCardItem_selectionHandler);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_18B7B171C(v7);
}

- (unint64_t)type
{
  v3 = OBJC_IVAR___SFBrowsingAssistantCardItem_type;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setType:(unint64_t)a3
{
  v5 = OBJC_IVAR___SFBrowsingAssistantCardItem_type;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (SFBrowsingAssistantCardItemObserving)observer
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)notifyObserverCardDidUpdate
{
  v3 = self;
  v2 = [(SFBrowsingAssistantCardItem *)v3 observer];
  if (v2)
  {
    [(SFBrowsingAssistantCardItemObserving *)v2 cardItemDidUpdate:v3];
    swift_unknownObjectRelease();
  }
}

@end