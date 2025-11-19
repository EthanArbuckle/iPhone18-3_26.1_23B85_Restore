@interface RecentUDCCell
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)awakeFromNib;
- (void)layoutSubviews;
- (void)showDetailViewController:(id)a3 viewController:(id)a4;
@end

@implementation RecentUDCCell

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RecentUDCCell();
  v2 = v3.receiver;
  [(RecentUDCCell *)&v3 awakeFromNib];
  sub_1D1340590();
  sub_1D1341F54();
  sub_1D13408D8();
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RecentUDCCell();
  v2 = v3.receiver;
  [(RecentUDCCell *)&v3 layoutSubviews];
  sub_1D138D84C();
  sub_1D1390C8C();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_1D138F20C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F1FC();
  v8 = self;
  sub_1D137E118(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)showDetailViewController:(id)a3 viewController:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a4;
    v9 = self;
  }

  sub_1D1342890(v10, a4);

  sub_1D134467C(v10, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8);
}

@end