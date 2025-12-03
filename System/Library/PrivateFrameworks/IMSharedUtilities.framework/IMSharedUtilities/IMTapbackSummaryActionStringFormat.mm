@interface IMTapbackSummaryActionStringFormat
- (IMTapbackSummaryActionStringFormat)initWithActionStringFormat:(id)format requiresReactionReplacment:(BOOL)replacment;
@end

@implementation IMTapbackSummaryActionStringFormat

- (IMTapbackSummaryActionStringFormat)initWithActionStringFormat:(id)format requiresReactionReplacment:(BOOL)replacment
{
  formatCopy = format;
  v11.receiver = self;
  v11.super_class = IMTapbackSummaryActionStringFormat;
  v7 = [(IMTapbackSummaryActionStringFormat *)&v11 init];
  if (v7)
  {
    v8 = [formatCopy copy];
    actionStringFormat = v7->_actionStringFormat;
    v7->_actionStringFormat = v8;

    v7->_requiresReactionReplacment = replacment;
  }

  return v7;
}

@end