@interface DOCConcreteSelectionLocation
- (_TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation)init;
- (_TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation)initWithTaggedItemsSourceRepresentedTag:(id)a3;
@end

@implementation DOCConcreteSelectionLocation

- (_TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation)initWithTaggedItemsSourceRepresentedTag:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation_selectedNodes) = MEMORY[0x277D84F90];
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCConcreteSelectionLocation();
  return [(DOCConcreteSelectionLocation *)&v5 initWithTaggedItemsSourceRepresentedTag:a3];
}

- (_TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation_selectedNodes) = MEMORY[0x277D84F90];
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCConcreteSelectionLocation();
  return [(DOCConcreteSelectionLocation *)&v3 init];
}

- (_TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation_selectedNodes) = MEMORY[0x277D84F90];
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCConcreteSelectionLocation();
  v4 = a3;
  v5 = [(DOCConcreteSelectionLocation *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end