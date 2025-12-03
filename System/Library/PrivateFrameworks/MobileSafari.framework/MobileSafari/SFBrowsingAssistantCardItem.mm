@interface SFBrowsingAssistantCardItem
+ (id)consentCardWithNotNowHandler:(id)handler continueHandler:(id)continueHandler;
+ (id)entityCardWithSearchResult:(id)result webpageIdentifier:(id)identifier componentIdentifier:(id)componentIdentifier actionHandler:(id)handler;
+ (id)listenToPageActionForHandler:(id)handler state:(unint64_t)state;
+ (id)listenToPageCard;
+ (id)readerCardWithReaderContext:(id)context title:(id)title summary:(id)summary disclaimer:(id)disclaimer contextMenuInteraction:(id)interaction showReaderHandler:(id)handler listenToPageHandler:(id)pageHandler listenToPageActionState:(unint64_t)self0;
+ (id)readerOptionsCardWithReaderContext:(id)context dismissReaderHandler:(id)handler listenToPageHandler:(id)pageHandler listenToPageActionState:(unint64_t)state;
- (SFBrowsingAssistantCardItemObserving)observer;
- (SFReaderContext)readerContext;
- (UIAction)primaryAction;
- (UIAction)secondaryAction;
- (UIContextMenuInteraction)contextMenuInteraction;
- (UIView)customBodyView;
- (id)selectionHandler;
- (unint64_t)type;
- (void)notifyObserverCardDidUpdate;
- (void)setReaderContext:(id)context;
- (void)setSelectionHandler:(id)handler;
- (void)setType:(unint64_t)type;
@end

@implementation SFBrowsingAssistantCardItem

+ (id)consentCardWithNotNowHandler:(id)handler continueHandler:(id)continueHandler
{
  v5 = _Block_copy(handler);
  v6 = _Block_copy(continueHandler);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = _sSo27SFBrowsingAssistantCardItemC12MobileSafariE07consentC013notNowHandler08continueJ0AByyc_yyctFZ_0(sub_18BA2A9D8, v7, sub_18BA2A9D8, v8);

  return v9;
}

+ (id)entityCardWithSearchResult:(id)result webpageIdentifier:(id)identifier componentIdentifier:(id)componentIdentifier actionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  if (identifier)
  {
    v10 = sub_18BC20BD8();
    identifier = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v13 = objc_allocWithZone(SFBrowsingAssistantCardItem);
  resultCopy = result;
  componentIdentifierCopy = componentIdentifier;
  v16 = [v13 init];
  [v16 setType_];
  v17 = sub_18BA4CAC8(resultCopy, sub_18B837284, v12, v10, identifier, componentIdentifierCopy);

  [v16 setCustomBodyView_];

  return v16;
}

+ (id)listenToPageCard
{
  v2 = [objc_allocWithZone(SFBrowsingAssistantCardItem) init];
  [v2 setType_];

  return v2;
}

+ (id)readerCardWithReaderContext:(id)context title:(id)title summary:(id)summary disclaimer:(id)disclaimer contextMenuInteraction:(id)interaction showReaderHandler:(id)handler listenToPageHandler:(id)pageHandler listenToPageActionState:(unint64_t)self0
{
  v15 = _Block_copy(handler);
  v16 = _Block_copy(pageHandler);
  if (title)
  {
    v27 = sub_18BC20BD8();
    title = v17;
    if (summary)
    {
      goto LABEL_3;
    }

LABEL_6:
    v18 = 0;
    if (disclaimer)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v27 = 0;
  if (!summary)
  {
    goto LABEL_6;
  }

LABEL_3:
  v18 = sub_18BC20BD8();
  summary = v19;
  if (disclaimer)
  {
LABEL_4:
    disclaimer = sub_18BC20BD8();
    v21 = v20;
    goto LABEL_8;
  }

LABEL_7:
  v21 = 0;
LABEL_8:
  swift_unknownObjectRetain();
  interactionCopy = interaction;
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
  v25 = static SFBrowsingAssistantCardItem.readerCard(readerContext:title:summary:disclaimer:contextMenuInteraction:showReaderHandler:listenToPageHandler:listenToPageActionState:)(context, v27, title, v18, summary, disclaimer, v21, interactionCopy, sub_18BA2A9D8, v23, v16, v24, state);
  sub_18B7B171C(v16);
  swift_unknownObjectRelease();

  return v25;
}

+ (id)readerOptionsCardWithReaderContext:(id)context dismissReaderHandler:(id)handler listenToPageHandler:(id)pageHandler listenToPageActionState:(unint64_t)state
{
  v8 = _Block_copy(handler);
  v9 = _Block_copy(pageHandler);
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
  v13 = static SFBrowsingAssistantCardItem.readerOptionsCard(readerContext:dismissReaderHandler:listenToPageHandler:listenToPageActionState:)(v12, sub_18BA2A9D8, v10, v9, v11, state);
  sub_18B7B171C(v9);
  swift_unknownObjectRelease();

  return v13;
}

+ (id)listenToPageActionForHandler:(id)handler state:(unint64_t)state
{
  v5 = _Block_copy(handler);
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

  v7 = _sSo27SFBrowsingAssistantCardItemC12MobileSafariE18listenToPageAction10forHandler5stateSo8UIActionCSgyycSg_So08SFReaderc6ListenhiJ5StateVtFZ_0(v5, v6, state);
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

- (void)setReaderContext:(id)context
{
  v5 = OBJC_IVAR___SFBrowsingAssistantCardItem_readerContext;
  swift_beginAccess();
  *(self + v5) = context;
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

- (void)setSelectionHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  sub_18B7B171C(v7);
}

- (unint64_t)type
{
  v3 = OBJC_IVAR___SFBrowsingAssistantCardItem_type;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setType:(unint64_t)type
{
  v5 = OBJC_IVAR___SFBrowsingAssistantCardItem_type;
  swift_beginAccess();
  *(self + v5) = type;
}

- (SFBrowsingAssistantCardItemObserving)observer
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)notifyObserverCardDidUpdate
{
  selfCopy = self;
  observer = [(SFBrowsingAssistantCardItem *)selfCopy observer];
  if (observer)
  {
    [(SFBrowsingAssistantCardItemObserving *)observer cardItemDidUpdate:selfCopy];
    swift_unknownObjectRelease();
  }
}

@end