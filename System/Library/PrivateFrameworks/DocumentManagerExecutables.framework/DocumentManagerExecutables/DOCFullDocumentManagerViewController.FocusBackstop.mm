@interface DOCFullDocumentManagerViewController.FocusBackstop
- (_TtCE26DocumentManagerExecutablesCSo36DOCFullDocumentManagerViewControllerP33_FDEA8D431B16975869C6E00E1BF05E9413FocusBackstop)initWithCoder:(id)coder;
- (_TtCE26DocumentManagerExecutablesCSo36DOCFullDocumentManagerViewControllerP33_FDEA8D431B16975869C6E00E1BF05E9413FocusBackstop)initWithFrame:(CGRect)frame;
@end

@implementation DOCFullDocumentManagerViewController.FocusBackstop

- (_TtCE26DocumentManagerExecutablesCSo36DOCFullDocumentManagerViewControllerP33_FDEA8D431B16975869C6E00E1BF05E9413FocusBackstop)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCFullDocumentManagerViewController.FocusBackstop();
  return [(DOCFullDocumentManagerViewController.FocusBackstop *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCE26DocumentManagerExecutablesCSo36DOCFullDocumentManagerViewControllerP33_FDEA8D431B16975869C6E00E1BF05E9413FocusBackstop)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCFullDocumentManagerViewController.FocusBackstop();
  coderCopy = coder;
  v5 = [(DOCFullDocumentManagerViewController.FocusBackstop *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end