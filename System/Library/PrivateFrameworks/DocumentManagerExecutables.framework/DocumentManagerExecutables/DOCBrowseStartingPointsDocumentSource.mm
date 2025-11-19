@interface DOCBrowseStartingPointsDocumentSource
- (_TtC26DocumentManagerExecutables37DOCBrowseStartingPointsDocumentSource)init;
- (_TtC26DocumentManagerExecutables37DOCBrowseStartingPointsDocumentSource)initWithCoder:(id)a3;
@end

@implementation DOCBrowseStartingPointsDocumentSource

- (_TtC26DocumentManagerExecutables37DOCBrowseStartingPointsDocumentSource)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCBrowseStartingPointsDocumentSource();
  v4 = a3;
  v5 = [(DOCBrowseStartingPointsDocumentSource *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC26DocumentManagerExecutables37DOCBrowseStartingPointsDocumentSource)init
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCBrowseStartingPointsDocumentSource();
  v2 = [(DOCBrowseStartingPointsDocumentSource *)&v4 init];
  [(DOCBrowseStartingPointsDocumentSource *)v2 setIdentifier:*MEMORY[0x277D05D80]];
  return v2;
}

@end