@interface IMTapbackSummaryActionStringFormat
- (IMTapbackSummaryActionStringFormat)initWithActionStringFormat:(id)a3 requiresReactionReplacment:(BOOL)a4;
@end

@implementation IMTapbackSummaryActionStringFormat

- (IMTapbackSummaryActionStringFormat)initWithActionStringFormat:(id)a3 requiresReactionReplacment:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = IMTapbackSummaryActionStringFormat;
  v7 = [(IMTapbackSummaryActionStringFormat *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    actionStringFormat = v7->_actionStringFormat;
    v7->_actionStringFormat = v8;

    v7->_requiresReactionReplacment = a4;
  }

  return v7;
}

@end