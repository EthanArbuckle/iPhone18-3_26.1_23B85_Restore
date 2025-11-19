@interface ContactSearchTableViewController
- (_TtC11CallsSearch32ContactSearchTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)configureWithCardController:(id)a3 presentationResultForIndex:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)callButtonTapped;
- (void)handleTUIDSLookupManagerStatusChanged;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ContactSearchTableViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1CFB7BE40();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1CFB7BF6C(a3);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = self;
  v5 = sub_1CFB7B9BC();
  if (v5 >> 62)
  {
    v6 = sub_1CFB8FFB0();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  v11 = a3;
  v12 = self;
  v13 = sub_1CFB7C12C(v11, v10);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  v11 = a3;
  v12 = self;
  sub_1CFB7C780(v11, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)handleTUIDSLookupManagerStatusChanged
{
  v2 = self;
  sub_1CFB7D624();
}

- (int64_t)configureWithCardController:(id)a3 presentationResultForIndex:(id)a4
{
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  v11 = a3;
  v12 = self;
  v13 = sub_1CFB7D75C(v11);

  (*(v7 + 8))(v10, v6);
  return v13;
}

- (void)callButtonTapped
{
  v2 = self;
  sub_1CFB7D9C0();
}

- (_TtC11CallsSearch32ContactSearchTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end