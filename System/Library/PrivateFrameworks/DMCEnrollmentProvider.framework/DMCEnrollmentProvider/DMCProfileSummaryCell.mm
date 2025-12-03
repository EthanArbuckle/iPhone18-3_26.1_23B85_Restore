@interface DMCProfileSummaryCell
+ (id)cellIdentifier;
- (void)setProfile:(id)profile;
@end

@implementation DMCProfileSummaryCell

+ (id)cellIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)setProfile:(id)profile
{
  v15[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  [(DMCProfileSummaryCell *)self setSelectionStyle:0];
  cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
  friendlyName = [profileCopy friendlyName];
  [cellConfiguration setText:friendlyName];

  v7 = +[DMCIconFactory largeGearIcon];
  [cellConfiguration setImage:v7];

  organization = [profileCopy organization];

  if (organization)
  {
    v9 = objc_alloc(MEMORY[0x277CCA898]);
    organization2 = [profileCopy organization];
    v14 = *MEMORY[0x277D740C0];
    dMCProfileSecondaryLabelColor = [MEMORY[0x277D75348] DMCProfileSecondaryLabelColor];
    v15[0] = dMCProfileSecondaryLabelColor;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v13 = [v9 initWithString:organization2 attributes:v12];
    [cellConfiguration setSecondaryAttributedText:v13];
  }

  [(DMCProfileSummaryCell *)self setContentConfiguration:cellConfiguration];
}

@end