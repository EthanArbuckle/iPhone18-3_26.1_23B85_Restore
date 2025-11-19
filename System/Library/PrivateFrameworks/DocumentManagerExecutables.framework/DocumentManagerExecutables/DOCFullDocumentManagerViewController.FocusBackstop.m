@interface DOCFullDocumentManagerViewController.FocusBackstop
- (_TtCE26DocumentManagerExecutablesCSo36DOCFullDocumentManagerViewControllerP33_FDEA8D431B16975869C6E00E1BF05E9413FocusBackstop)initWithCoder:(id)a3;
- (_TtCE26DocumentManagerExecutablesCSo36DOCFullDocumentManagerViewControllerP33_FDEA8D431B16975869C6E00E1BF05E9413FocusBackstop)initWithFrame:(CGRect)a3;
@end

@implementation DOCFullDocumentManagerViewController.FocusBackstop

- (_TtCE26DocumentManagerExecutablesCSo36DOCFullDocumentManagerViewControllerP33_FDEA8D431B16975869C6E00E1BF05E9413FocusBackstop)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCFullDocumentManagerViewController.FocusBackstop();
  return [(DOCFullDocumentManagerViewController.FocusBackstop *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCE26DocumentManagerExecutablesCSo36DOCFullDocumentManagerViewControllerP33_FDEA8D431B16975869C6E00E1BF05E9413FocusBackstop)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCFullDocumentManagerViewController.FocusBackstop();
  v4 = a3;
  v5 = [(DOCFullDocumentManagerViewController.FocusBackstop *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end