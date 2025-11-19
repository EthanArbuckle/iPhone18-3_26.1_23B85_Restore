@interface DMCProfileSummaryCell
+ (id)cellIdentifier;
- (void)setProfile:(id)a3;
@end

@implementation DMCProfileSummaryCell

+ (id)cellIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)setProfile:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(DMCProfileSummaryCell *)self setSelectionStyle:0];
  v5 = [MEMORY[0x277D756E0] cellConfiguration];
  v6 = [v4 friendlyName];
  [v5 setText:v6];

  v7 = +[DMCIconFactory largeGearIcon];
  [v5 setImage:v7];

  v8 = [v4 organization];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CCA898]);
    v10 = [v4 organization];
    v14 = *MEMORY[0x277D740C0];
    v11 = [MEMORY[0x277D75348] DMCProfileSecondaryLabelColor];
    v15[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v13 = [v9 initWithString:v10 attributes:v12];
    [v5 setSecondaryAttributedText:v13];
  }

  [(DMCProfileSummaryCell *)self setContentConfiguration:v5];
}

@end