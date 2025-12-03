@interface InteractionFactorsCell
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)awakeFromNib;
- (void)editButtonTapped:(id)tapped;
- (void)layoutSubviews;
@end

@implementation InteractionFactorsCell

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for InteractionFactorsCell();
  v2 = v3.receiver;
  [(InteractionFactorsCell *)&v3 awakeFromNib];
  sub_2282C6F24();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_228391350();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391340();
  selfCopy = self;
  sub_2282C7318();

  (*(v5 + 8))(v8, v4);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2282C75FC();
}

- (void)editButtonTapped:(id)tapped
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_228392F90();
  swift_unknownObjectRelease();
  sub_2282C8CC0();

  __swift_destroy_boxed_opaque_existential_0(v5);
}

@end