@interface VisionLinkActivityItem
- (_TtC10CallsAppUI22VisionLinkActivityItem)initWithTUConversationLink:(id)a3 title:(id)a4 placeholder:(id)a5;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4;
- (id)activityViewControllerLinkMetadata:(id)a3;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation VisionLinkActivityItem

- (_TtC10CallsAppUI22VisionLinkActivityItem)initWithTUConversationLink:(id)a3 title:(id)a4 placeholder:(id)a5
{
  v8 = sub_1CFC9BF28();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4)
  {
    sub_1CFC9BEF8();
    goto LABEL_5;
  }

  sub_1CFC9F768();
  v14 = v13;
  sub_1CFC9BEF8();
  if (!v14)
  {
LABEL_5:
    v17 = a3;
    v16 = 0;
    goto LABEL_6;
  }

  v15 = a3;
  v16 = sub_1CFC9F728();

LABEL_6:
  v18 = sub_1CFC9BEE8();
  v19 = type metadata accessor for VisionLinkActivityItem();
  v22.receiver = self;
  v22.super_class = v19;
  v20 = [(VisionLinkActivityItem *)&v22 initWithTUConversationLink:a3 title:v16 placeholder:v18];

  (*(v9 + 8))(v12, v8);
  return v20;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v4 = sub_1CFC9BF28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  v12 = self;
  v13 = [(VisionLinkActivityItem *)v12 placeholder];
  sub_1CFC9BEF8();

  (*(v5 + 16))(v9, v11, v4);
  v14 = sub_1CFCA02E8();
  (*(v5 + 8))(v11, v4);

  return v14;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1CFBDAF04(v17);

  v9 = v18;
  if (v18)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v11 = *(v9 - 8);
    v12 = *(v11 + 64);
    MEMORY[0x1EEE9AC00](v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14);
    v15 = sub_1CFCA02A8();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  v9 = [(VisionLinkActivityItem *)v7 tuConversationLink];
  v10 = [v9 linkName];

  if (v10)
  {
    sub_1CFC9F768();
  }

  else
  {
  }

  v11 = sub_1CFC9F728();

  return v11;
}

- (id)activityViewControllerLinkMetadata:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1CFBDB3B0();

  return v6;
}

@end