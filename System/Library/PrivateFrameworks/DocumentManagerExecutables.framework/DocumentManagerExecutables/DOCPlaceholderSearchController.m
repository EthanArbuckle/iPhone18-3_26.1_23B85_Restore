@interface DOCPlaceholderSearchController
- (_TtC26DocumentManagerExecutables30DOCPlaceholderSearchController)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables30DOCPlaceholderSearchController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC26DocumentManagerExecutables30DOCPlaceholderSearchController)initWithSearchResultsController:(id)a3;
@end

@implementation DOCPlaceholderSearchController

- (_TtC26DocumentManagerExecutables30DOCPlaceholderSearchController)initWithSearchResultsController:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCPlaceholderSearchController();
  return [(DOCPlaceholderSearchController *)&v5 initWithSearchResultsController:a3];
}

- (_TtC26DocumentManagerExecutables30DOCPlaceholderSearchController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    v9 = a4;
    v10 = MEMORY[0x24C1FAD20](v6, v8);
  }

  else
  {
    v11 = a4;
    v10 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for DOCPlaceholderSearchController();
  v12 = [(DOCPlaceholderSearchController *)&v14 initWithNibName:v10 bundle:a4];

  return v12;
}

- (_TtC26DocumentManagerExecutables30DOCPlaceholderSearchController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCPlaceholderSearchController();
  v4 = a3;
  v5 = [(DOCPlaceholderSearchController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end