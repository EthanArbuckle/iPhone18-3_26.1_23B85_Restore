@interface DOCPlaceholderSearchController
- (_TtC26DocumentManagerExecutables30DOCPlaceholderSearchController)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutables30DOCPlaceholderSearchController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC26DocumentManagerExecutables30DOCPlaceholderSearchController)initWithSearchResultsController:(id)controller;
@end

@implementation DOCPlaceholderSearchController

- (_TtC26DocumentManagerExecutables30DOCPlaceholderSearchController)initWithSearchResultsController:(id)controller
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCPlaceholderSearchController();
  return [(DOCPlaceholderSearchController *)&v5 initWithSearchResultsController:controller];
}

- (_TtC26DocumentManagerExecutables30DOCPlaceholderSearchController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    bundleCopy = bundle;
    v10 = MEMORY[0x24C1FAD20](v6, v8);
  }

  else
  {
    bundleCopy2 = bundle;
    v10 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for DOCPlaceholderSearchController();
  v12 = [(DOCPlaceholderSearchController *)&v14 initWithNibName:v10 bundle:bundle];

  return v12;
}

- (_TtC26DocumentManagerExecutables30DOCPlaceholderSearchController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCPlaceholderSearchController();
  coderCopy = coder;
  v5 = [(DOCPlaceholderSearchController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end