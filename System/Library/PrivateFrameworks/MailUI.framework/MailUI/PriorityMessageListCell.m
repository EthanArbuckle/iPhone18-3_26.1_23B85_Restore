@interface PriorityMessageListCell
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)prepareForReuse;
@end

@implementation PriorityMessageListCell

- (void)prepareForReuse
{
  MEMORY[0x277D82BE0](self);
  PriorityMessageListCell.prepareForReuse()();
  MEMORY[0x277D82BD8](self);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v13 = self;
  v12 = a3;
  v11 = sub_214CCDB84();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v10 = &v6 - v7;
  MEMORY[0x277D82BE0](v4);
  MEMORY[0x277D82BE0](self);
  sub_214CCDB64();
  v5 = PriorityMessageListCell.updateConfiguration(using:)(v10);
  (*(v8 + 8))(v10, v11, v5);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
}

@end