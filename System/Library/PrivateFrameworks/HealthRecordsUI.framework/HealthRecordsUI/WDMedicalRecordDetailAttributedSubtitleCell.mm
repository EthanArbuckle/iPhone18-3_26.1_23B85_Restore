@interface WDMedicalRecordDetailAttributedSubtitleCell
- (NSAttributedString)attributedSubtitle;
- (void)setSubtitle:(id)subtitle;
@end

@implementation WDMedicalRecordDetailAttributedSubtitleCell

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitleLabel = [(WDMedicalRecordDetailSubtitleCell *)self subtitleLabel];
  [subtitleLabel setAttributedText:subtitleCopy];
}

- (NSAttributedString)attributedSubtitle
{
  subtitleLabel = [(WDMedicalRecordDetailSubtitleCell *)self subtitleLabel];
  text = [subtitleLabel text];

  return text;
}

@end