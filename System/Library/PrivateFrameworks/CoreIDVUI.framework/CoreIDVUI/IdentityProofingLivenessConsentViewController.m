@interface IdentityProofingLivenessConsentViewController
- (_TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController)initWithCoder:(id)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)configureTableViewScheme;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateViewLayout:(id)a3 previousTraitCollection:(id)a4;
- (void)viewDidLoad;
@end

@implementation IdentityProofingLivenessConsentViewController

- (_TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController_tableViewCellIdentifier);
  *v4 = 0xD00000000000002CLL;
  v4[1] = 0x8000000245926AD0;
  v5 = OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController_fileManager;
  *(&self->super.super.super.super.isa + v5) = [objc_opt_self() defaultManager];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController_tableViewItems) = MEMORY[0x277D84F90];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController____lazy_storage___tableView) = 0;
  result = sub_2459115D4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2457D51FC();
}

- (void)updateViewLayout:(id)a3 previousTraitCollection:(id)a4
{
  v5 = self;
  sub_2458A3560();
  v4 = sub_2457D4B28();
  sub_2458A6BA0(v4, 0, 1, 0, 1);
}

- (void)configureTableViewScheme
{
  v2 = self;
  sub_2457D7434();
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_24590C284();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C254();
  v10 = a3;
  v11 = self;
  v12 = sub_2457D83A8(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_24590C284();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C254();
  v10 = a3;
  v11 = self;
  sub_2457D86B0(v10);

  (*(v7 + 8))(v9, v6);
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = sub_24590C284();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C254();
  v8 = *MEMORY[0x277D76F30];
  (*(v5 + 8))(v7, v4);
  return v8;
}

@end