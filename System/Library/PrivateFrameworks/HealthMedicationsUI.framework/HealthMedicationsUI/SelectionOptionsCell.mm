@interface SelectionOptionsCell
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)switchValueChanged:(id)a3;
@end

@implementation SelectionOptionsCell

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_228391350();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391340();
  v9 = self;
  sub_2282F1278();

  (*(v5 + 8))(v8, v4);
}

- (void)switchValueChanged:(id)a3
{
  v3 = self;
  sub_2282F1B58();
}

@end