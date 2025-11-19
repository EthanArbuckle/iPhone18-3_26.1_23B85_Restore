@interface WDMedicalRecordDetailAttributedSubtitleCell
- (NSAttributedString)attributedSubtitle;
- (void)setSubtitle:(id)a3;
@end

@implementation WDMedicalRecordDetailAttributedSubtitleCell

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(WDMedicalRecordDetailSubtitleCell *)self subtitleLabel];
  [v5 setAttributedText:v4];
}

- (NSAttributedString)attributedSubtitle
{
  v2 = [(WDMedicalRecordDetailSubtitleCell *)self subtitleLabel];
  v3 = [v2 text];

  return v3;
}

@end