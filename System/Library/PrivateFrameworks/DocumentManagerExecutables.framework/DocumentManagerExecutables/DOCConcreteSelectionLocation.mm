@interface DOCConcreteSelectionLocation
- (_TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation)init;
- (_TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation)initWithTaggedItemsSourceRepresentedTag:(id)tag;
@end

@implementation DOCConcreteSelectionLocation

- (_TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation)initWithTaggedItemsSourceRepresentedTag:(id)tag
{
  *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation_selectedNodes) = MEMORY[0x277D84F90];
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCConcreteSelectionLocation();
  return [(DOCConcreteSelectionLocation *)&v5 initWithTaggedItemsSourceRepresentedTag:tag];
}

- (_TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation_selectedNodes) = MEMORY[0x277D84F90];
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCConcreteSelectionLocation();
  return [(DOCConcreteSelectionLocation *)&v3 init];
}

- (_TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation_selectedNodes) = MEMORY[0x277D84F90];
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCConcreteSelectionLocation();
  coderCopy = coder;
  v5 = [(DOCConcreteSelectionLocation *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end