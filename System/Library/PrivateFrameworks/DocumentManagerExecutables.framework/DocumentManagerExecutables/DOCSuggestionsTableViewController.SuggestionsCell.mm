@interface DOCSuggestionsTableViewController.SuggestionsCell
- (_TtCC26DocumentManagerExecutables33DOCSuggestionsTableViewControllerP33_5DFFB1A09D4A0E4BECCA9E4CD6748FBA15SuggestionsCell)initWithCoder:(id)coder;
- (_TtCC26DocumentManagerExecutables33DOCSuggestionsTableViewControllerP33_5DFFB1A09D4A0E4BECCA9E4CD6748FBA15SuggestionsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation DOCSuggestionsTableViewController.SuggestionsCell

- (_TtCC26DocumentManagerExecutables33DOCSuggestionsTableViewControllerP33_5DFFB1A09D4A0E4BECCA9E4CD6748FBA15SuggestionsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
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
  v8 = [(DOCSuggestionsTableViewController.SuggestionsCell *)&v10 initWithStyle:style reuseIdentifier:v7];

  return v8;
}

- (_TtCC26DocumentManagerExecutables33DOCSuggestionsTableViewControllerP33_5DFFB1A09D4A0E4BECCA9E4CD6748FBA15SuggestionsCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCSuggestionsTableViewController.SuggestionsCell();
  coderCopy = coder;
  v5 = [(DOCSuggestionsTableViewController.SuggestionsCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end