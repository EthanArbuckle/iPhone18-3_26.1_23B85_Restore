@interface DOCSuggestionsTableViewController.SuggestionsCell
- (_TtCC26DocumentManagerExecutables33DOCSuggestionsTableViewControllerP33_5DFFB1A09D4A0E4BECCA9E4CD6748FBA15SuggestionsCell)initWithCoder:(id)a3;
- (_TtCC26DocumentManagerExecutables33DOCSuggestionsTableViewControllerP33_5DFFB1A09D4A0E4BECCA9E4CD6748FBA15SuggestionsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation DOCSuggestionsTableViewController.SuggestionsCell

- (_TtCC26DocumentManagerExecutables33DOCSuggestionsTableViewControllerP33_5DFFB1A09D4A0E4BECCA9E4CD6748FBA15SuggestionsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = MEMORY[0x24C1FAD20](v6);
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for DOCSuggestionsTableViewController.SuggestionsCell();
  v8 = [(DOCSuggestionsTableViewController.SuggestionsCell *)&v10 initWithStyle:a3 reuseIdentifier:v7];

  return v8;
}

- (_TtCC26DocumentManagerExecutables33DOCSuggestionsTableViewControllerP33_5DFFB1A09D4A0E4BECCA9E4CD6748FBA15SuggestionsCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCSuggestionsTableViewController.SuggestionsCell();
  v4 = a3;
  v5 = [(DOCSuggestionsTableViewController.SuggestionsCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end