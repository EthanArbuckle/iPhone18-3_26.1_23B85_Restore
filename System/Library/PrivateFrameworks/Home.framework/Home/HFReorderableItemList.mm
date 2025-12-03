@interface HFReorderableItemList
- (BOOL)isEmpty;
- (BOOL)sortedIdentifiersWithIdentifier1:(id)identifier1 identifier2:(id)identifier2;
- (BOOL)sortedItemsWithItem1:(id)item1 item2:(id)item2;
- (HFReorderableItemList)initWithApplicationDataContainer:(id)container category:(id)category;
- (id)saveWithSender:(id)sender;
- (void)setSortedItems:(id)items;
@end

@implementation HFReorderableItemList

- (HFReorderableItemList)initWithApplicationDataContainer:(id)container category:(id)category
{
  v4 = sub_20DD64EB4();
  v6 = v5;
  v7 = swift_unknownObjectRetain();
  return ReorderableItemList.init(applicationDataContainer:category:)(v7, v4, v6);
}

- (BOOL)sortedItemsWithItem1:(id)item1 item2:(id)item2
{
  item1Copy = item1;
  item2Copy = item2;
  selfCopy = self;
  v9 = sub_20DA48634(item1Copy, item2Copy);

  return v9 & 1;
}

- (BOOL)sortedIdentifiersWithIdentifier1:(id)identifier1 identifier2:(id)identifier2
{
  v5 = sub_20DD64EB4();
  v7 = v6;
  v8 = sub_20DD64EB4();
  v10 = v9;
  v11 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0xA8);
  selfCopy = self;
  v13 = v11(v5, v7, v8, v10);
  if (v13 != 2)
  {
    goto LABEL_6;
  }

  if (v5 != v8 || v7 != v10)
  {
    v13 = sub_20DD65974();
LABEL_6:
    v14 = v13;

    goto LABEL_7;
  }

  v14 = 0;
LABEL_7:

  return v14 & 1;
}

- (BOOL)isEmpty
{
  v3 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  return (*(&self->super.super.isa + v3))[2] == 0;
}

- (void)setSortedItems:(id)items
{
  v4 = sub_20DD64FD4();
  selfCopy = self;
  v5 = sub_20DA49700(v4);

  if (v5)
  {
    sub_20DA48A30(v5);
  }
}

- (id)saveWithSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_20DD654E4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_20DA49EBC(v8);

  sub_20D9D76EC(v8, &unk_27C843A80, &qword_20DD94100);

  return v6;
}

@end