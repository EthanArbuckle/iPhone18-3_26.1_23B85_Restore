@interface BucketCollectionViewCell
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)prepareForReuse;
@end

@implementation BucketCollectionViewCell

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v12 = self;
  v11 = a3;
  v10 = sub_214CCDB84();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v9 = &v5 - v6;
  MEMORY[0x277D82BE0](v4);
  MEMORY[0x277D82BE0](self);
  sub_214CCDB64();
  BucketCollectionViewCell.updateConfiguration(using:)(v9);
  (*(v7 + 8))(v9, v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
}

- (void)prepareForReuse
{
  MEMORY[0x277D82BE0](self);
  BucketCollectionViewCell.prepareForReuse()();
  MEMORY[0x277D82BD8](self);
}

@end